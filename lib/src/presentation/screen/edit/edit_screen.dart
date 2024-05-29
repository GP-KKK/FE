import 'package:fe/src/data/model/model.dart';
import 'package:fe/src/presentation/common/adaptive_bottom_sheet.dart';
import 'package:fe/src/presentation/common/bottom_submit_button.dart';
import 'package:fe/src/presentation/common/custom_popup_button.dart';
import 'package:fe/src/presentation/common/custom_text_field.dart';
import 'package:fe/src/presentation/layout/scollable_layout.dart';
import 'package:fe/src/presentation/screen/edit/widget/profile_image_bottom_sheet.dart';
import 'package:fe/src/presentation/screen/edit/widget/profile_image_modify_button.dart';
import 'package:fe/src/presentation/screen/edit/widget/school_bottom_sheet.dart';
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
  // enum FeelState{
  // driving,
  // parking,
  // commingsoon,
  // busy,
  // unknown
  // }
  final Map<FeelState, String> feelNames = {
    FeelState.driving: ('운전 중'),
    FeelState.parking: ('주차 중'),
    FeelState.commingsoon: ('곧 돌아옵니다.'),
    FeelState.busy: ('바쁨'),
    FeelState.unknown : ('알 수 없음'),
    FeelState.hot: ('45.8도'),
  };



  UserModel currentUser = UserModel(
      email: '123kim003@gmail.com',
      name: '김성민',
      feel: "건들지마소",
      profileImage: 'cat');
  UserModel updatedUser = UserModel(
      email: 'newEmail@gmail.com',
      name: 'kimsm',
      feel: "very bad",
      profileImage: 'cow');

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: ScrollableLayout(
        isAppBarVisible: true,
        appBarTitle:
        Text('프로필 수정', style: textTheme.labelMedium),
        backgroundColor: Colors.white,
        innerTopPadding: 0,
        bottomTabBar: const BottomSubmitButton(
          onPressed: null,
          //isProfileInfoChanged ? () => onSubmitted(updatedUser) : null,
        ),
        children: [
          Form(
            //key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: ProfileImageModifyButton(
                      onTap: () => _showProfileImageBottomSheet()),
                ),
                Wrap(
                  runSpacing: 25,
                  spacing: 25,
                  children: [
                    _buildTextField(// 닉네임
                      labelText: ('닉네임'),
                      hintText: ('닉네임을 작성하세요.'),
                      maxLength: 20,
                      initialValue: '김성민',
                      onChanged: (value) => updateField(
                          currentUser, updatedUser, 'name', value),
                      // focusNode: _nameFocus,
                      // validator: (value) => FormValidateUtils()
                      //     .validateName(_nameFocus, value!),
                    ),
                    _buildTextField(// 내 상태
                      labelText: ('내 상태메세지'),
                      hintText: ('내 상태 메세지를 입력하세요.'),
                      maxLength: 20,
                      initialValue: '바쁘다 바빠.',
                      onChanged: (value) => updateField(
                          currentUser, updatedUser, 'name', value),
                      // focusNode: _nameFocus,
                      // validator: (value) => FormValidateUtils()
                      //     .validateName(_nameFocus, value!),
                    ),

                    _buildPopupButton(
                      labelText: ('내 상태'),

                      textValue: feelNames[FeelState.busy],
                      onTap: () => _showSchoolBottomSheet(),
                    ),

                    _buildPopupButton(
                      labelText: ('내 온도'),

                      textValue: feelNames[FeelState.hot],
                      onTap: () => _showSchoolBottomSheet(),
                    ),

                    // if (updatedUser.role == Role.child)
                    //   _buildSchoolAndGradeSection(currentUser, updatedUser),
                    // if (updatedUser.role == Role.child)
                    //   _buildAssistantSection(),
                    const SizedBox(height: 100),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void iconOnTap() {
    setState(() {
      print('icon selected');
    });
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
  void updateField(UserModel currentUser, UserModel updateUser, String field,
      dynamic value) {
    // switch (field) {
    //   case 'name':
    //     ref.watch(authControllerProvider.notifier).setProfile(
    //         user: currentUser, updatedUser: updateUser.copyWith(name: value));
    //     break;
    //   case 'grade':
    //     ref.watch(authControllerProvider.notifier).setProfile(
    //         user: currentUser,
    //         updatedUser: updateUser.copyWith(grade: int.tryParse(value)));
    //     break;
    // }
  }

  Widget buildRowWithCircles(GestureTapCallback onTap) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildCircle(onTap),
        buildCircle(onTap),
        buildCircle(onTap),
      ],
    );
  }
  Widget buildCircle(GestureTapCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
        child: Center(child: Text('icon')),
      ),
    );
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

}
