import 'package:fe/src/data/model/model.dart';
import 'package:fe/src/presentation/common/adaptive_bottom_sheet.dart';
import 'package:fe/src/presentation/common/bottom_submit_button.dart';
import 'package:fe/src/presentation/common/custom_popup_button.dart';
import 'package:fe/src/presentation/common/custom_text_field.dart';
import 'package:fe/src/presentation/controller/controller.dart';
import 'package:fe/src/presentation/layout/scollable_layout.dart';
import 'package:fe/src/presentation/screen/edit/widget/profile_image_bottom_sheet.dart';
import 'package:fe/src/presentation/screen/edit/widget/profile_image_modify_button.dart';
import 'package:fe/src/presentation/screen/edit/widget/school_bottom_sheet.dart';
import 'package:fe/src/presentation/utils/form_validate_utils.dart';
import 'package:fe/src/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditScreen extends ConsumerStatefulWidget {
  const EditScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingScreenState();
}

class _SettingScreenState extends ConsumerState<EditScreen> {
  final GlobalKey<FormState> formKey = GlobalKey();
  bool isProfileInfoChanged = false;
  final FocusNode _nameFocus = FocusNode();
  final FocusNode _feelFocus = FocusNode();

  void onSubmitted(UserModel user) async {
    FocusScope.of(context).unfocus();

    if (formKey.currentState == null) {
      return;
    }

    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

      await ref.read(authControllerProvider.notifier).updateProfile(user: user);

      formKey.currentState!.reset();


      goToBeforeScreen();
    } else {
      print('invalid form');
    }
  }

  void goToBeforeScreen() => Navigator.of(context).pop();
  Widget _buildPopupButton({
    String? labelText,
    String? hintText,
    required String? textValue,
    required VoidCallback onTap,
  }) {
    return CustomPopupButton(
      labelText: labelText,
      hintText: hintText,
      textValue: textValue,
      onTap: onTap,
    );
  }
  Widget _buildTextField({
    String? labelText,
    required String hintText,
    required String initialValue,
    required ValueChanged<String> onChanged,
    int? maxLength,
    String? Function(String?)? validator,
    TextInputAction textInputAction = TextInputAction.next,
    FocusNode? focusNode,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return CustomTextField(
      onChanged: onChanged,
      initialValue: initialValue,
      focusNode: focusNode,
      maxLength: maxLength,
      labelText: labelText,
      hintText: hintText,
      validator: validator,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme
        .of(context)
        .textTheme;
    final account = ref.watch(authControllerProvider) as Authenticated;
    UserModel currentUser = account.user;
    UserModel updatedUser = account.updatedUser!;

    ref.listen<AuthState>(authControllerProvider, (_, state) {
      if (state is Authenticated) {
        final UserModel updatedUser = state.updatedUser!;

        // UserModel의 모든 필드를 비교
        bool hasChanged = currentUser.name != updatedUser.name ||
            currentUser.email != updatedUser.email ||
            currentUser.profileImage != updatedUser.profileImage ||
            currentUser.source != updatedUser.source ||
            currentUser.feelState != updatedUser.feelState ||
            currentUser.feel != updatedUser.feel ||
            currentUser.emotionDegree != updatedUser.emotionDegree;

        // 상태 변경 감지 시 UI 업데이트
        if (hasChanged) {
          setState(() {
            isProfileInfoChanged = true;
          });
        }
      }
    });

    if (account.updatedUser != null) {
      return GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: ScrollableLayout(
          isAppBarVisible: true,
          appBarTitle: Text('프로필 수정', style: textTheme.labelMedium),
          backgroundColor: Colors.white,
          innerTopPadding: 0,
          bottomTabBar: BottomSubmitButton(
            onPressed: isProfileInfoChanged
                ? () => onSubmitted(updatedUser)
                : null,
          ),
          children: [
            Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: ProfileImageModifyButton(
                      onTap: () => _showProfileImageBottomSheet(),
                    ),
                  ),
                  Wrap(
                    runSpacing: 25,
                    spacing: 25,
                    children: [
                      _buildTextField(
                        labelText: ('닉네임'),
                        hintText: ('닉네임을 작성하세요.'),
                        maxLength: 20,
                        initialValue: updatedUser.name,
                        onChanged: (value) =>
                            updateField(
                              currentUser,
                              updatedUser,
                              'name',
                              value,
                            ),
                        focusNode: _nameFocus,
                        validator: (value) =>
                            FormValidateUtils().validateName(
                                _nameFocus, value!),
                      ),
                      _buildTextField(
                        labelText: ('내 상태메세지'),
                        hintText: ('내 상태 메세지를 입력하세요.'),
                        maxLength: 20,
                        initialValue: updatedUser.feel,
                        onChanged: (value) =>
                            updateField(
                              currentUser,
                              updatedUser,
                              'feel',
                              value,
                            ),
                        focusNode: _feelFocus,
                        validator: (value) =>
                            FormValidateUtils().validateName(
                                _feelFocus, value!),
                      ),
                      _buildPopupButton(
                        labelText: ('내 상태'),
                        textValue: updatedUser.feelState.toString(),
                        onTap: () => _showSchoolBottomSheet(),
                      ),
                      _buildPopupButton(
                        labelText: ('내 온도'),
                        textValue: updatedUser.emotionDegree.toString(),
                        onTap: () => _showSchoolBottomSheet(),
                      ),
                      const SizedBox(height: 100),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.of(context).pop();
      });
      return const SizedBox.shrink();
    }
  }

  void updateField(UserModel currentUser, UserModel updateUser, String field,
      dynamic value) {
    switch (field) {
      case 'name':
        ref.watch(authControllerProvider.notifier).setProfile(
          user: currentUser,
          updatedUser: updateUser.copyWith(name: value),
        );
        break;
      case 'feel':
        ref.watch(authControllerProvider.notifier).setProfile(
          user: currentUser,
          updatedUser: updateUser.copyWith(feel: value),
        );
        break;
    }
  }


  void _showProfileImageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const AdaptiveBottomSheet(
            childWidget: ProfileImageBottomSheet());
      },
    );
  }

  void _showSchoolBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const AdaptiveBottomSheet(childWidget: SchoolBottomSheet());
      },
    );
  }

}