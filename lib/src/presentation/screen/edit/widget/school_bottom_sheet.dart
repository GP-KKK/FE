import 'package:fe/src/data/model/model.dart';
import 'package:flutter/material.dart';
// import 'package:fe/src/data/model/model.dart';
// import 'package:fe/src/presentation/controller/controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class SchoolBottomSheet extends ConsumerStatefulWidget {
  const SchoolBottomSheet({super.key});

  @override
  ConsumerState<SchoolBottomSheet> createState() => _SchoolBottomSheetState();
}

class _SchoolBottomSheetState extends ConsumerState<SchoolBottomSheet> {
  final Map<FeelState, String> feelNames = {
    FeelState.driving: ('운전 중'),
    FeelState.parking: ('주차 중'),
    FeelState.commingsoon: ('곧 돌아옵니다.'),
    FeelState.busy: ('바쁨'),
    FeelState.unknown : ('알 수 없음')
  };

  @override
  Widget build(BuildContext context) {
    // final Authenticated account =
    //     ref.watch(authControllerProvider) as Authenticated;
    UserModel updatedUser = UserModel(
        email: 'newEmail@gmail.com',
        name: 'kimsm',
        feel: "very bad",
        profileImage: 'cow');
    const school = FeelState.unknown;

    // ref.listen(
    //   authControllerProvider.select((state) {
    //     return state is Authenticated && state.updatedUser != null
    //         ? state.updatedUser!.school
    //         : null;
    //   }),
    //   (_, newState) {
    //     if (school != newState) {
    //       Navigator.pop(context);
    //     }
    //   },
    // );

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                _buildSchoolSelect(updatedUser, FeelState.driving),
                _buildSchoolSelect(updatedUser, FeelState.parking),
                _buildSchoolSelect(updatedUser, FeelState.commingsoon),
                _buildSchoolSelect(updatedUser, FeelState.busy),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSchoolSelect(UserModel user, FeelState schoolValue) {
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () {
        var updatedUser = user.copyWith(feelState: schoolValue);

        // if (schoolValue == FeelState.unknown) {
        //   updatedUser = updatedUser.copyWith(feelState: nuFeelState.unknownll);
        // }
        //
        // ref
        //     .watch(authControllerProvider.notifier)
        //     .setProfile(user: user, updatedUser: updatedUser);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                feelNames[schoolValue]!,
                style: textTheme.labelMedium,
              ),
            ),
            Radio(
              visualDensity: VisualDensity.compact,
              value: schoolValue,
              groupValue: user.feelState,
              onChanged: (FeelState? value) {
                var updatedUser = user.copyWith(feelState: schoolValue);

                // if (schoolValue == School.kindergarten) {
                //   updatedUser = updatedUser.copyWith(grade: null);
                // }
                //
                // ref
                //     .watch(authControllerProvider.notifier)
                //     .setProfile(user: user, updatedUser: updatedUser);
              },
            ),
          ],
        ),
      ),
    );
  }
}
