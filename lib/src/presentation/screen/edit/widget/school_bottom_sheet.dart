// import 'package:fe/src/data/model/model.dart';
// import 'package:fe/src/presentation/controller/controller.dart';
// import 'package:flutter/material.dart';
// // import 'package:fe/src/data/model/model.dart';
// // import 'package:fe/src/presentation/controller/controller.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:intl/intl.dart';
//
// class SchoolBottomSheet extends ConsumerStatefulWidget {
//   const SchoolBottomSheet({super.key});
//
//   @override
//   ConsumerState<SchoolBottomSheet> createState() => _SchoolBottomSheetState();
// }
//
// class _SchoolBottomSheetState extends ConsumerState<SchoolBottomSheet> {
//   final Map<FeelState, String> feelNames = {
//     FeelState.DRIVING: ('운전 중'),
//     FeelState.PARKING: ('주차 중'),
//     FeelState.COMMINGSOON: ('곧 돌아옵니다.'),
//     FeelState.BUSY: ('바쁨'),
//     FeelState.UNKNOWN : ('알 수 없음')
//   };
//
//   @override
//   Widget build(BuildContext context) {
//     final Authenticated account =
//     ref.watch(authControllerProvider) as Authenticated;
//     final UserModel updatedUser = account.updatedUser!;
//
//     final school = account.user.feelState;
//
//     ref.listen(
//       authControllerProvider.select((state) {
//         return state is Authenticated && state.updatedUser != null
//             ? state.updatedUser!.feelState
//             : null;
//       }),
//       (_, newState) {
//         if (school != newState) {
//           Navigator.pop(context);
//         }
//       },
//     );
//
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: 300,
//       decoration: const ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(20),
//             topRight: Radius.circular(20),
//           ),
//         ),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(30.0),
//             child: Column(
//               children: [
//                 _buildSchoolSelect(updatedUser, FeelState.DRIVING),
//                 _buildSchoolSelect(updatedUser, FeelState.PARKING),
//                 _buildSchoolSelect(updatedUser, FeelState.COMMINGSOON),
//                 _buildSchoolSelect(updatedUser, FeelState.BUSY),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildSchoolSelect(UserModel user, FeelState schoolValue) {
//     final textTheme = Theme.of(context).textTheme;
//
//     return GestureDetector(
//       onTap: () {
//         var updatedUser = user.copyWith(feelState: schoolValue);
//
//         if (schoolValue == FeelState) {
//           updatedUser = updatedUser.copyWith(feelState: FeelState.UNKNOWN);
//         }
//
//         ref
//             .watch(authControllerProvider.notifier)
//             .setProfile(user: user, updatedUser: updatedUser);
//       },
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 10.0),
//         child: Row(
//           children: [
//             Expanded(
//               child: Text(
//                 feelNames[schoolValue]!,
//                 style: textTheme.labelMedium,
//               ),
//             ),
//             Radio(
//               visualDensity: VisualDensity.compact,
//               value: schoolValue,
//               groupValue: user.feelState,
//               onChanged: (FeelState? value) {
//                 var updatedUser = user.copyWith(feelState: schoolValue);
//
//                 if (schoolValue == School.kindergarten) {
//                   updatedUser = updatedUser.copyWith(grade: null);
//                 }
//
//                 ref
//                     .watch(authControllerProvider.notifier)
//                     .setProfile(user: user, updatedUser: updatedUser);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
