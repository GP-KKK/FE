// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:fe/src/data/model/model.dart';
// import 'package:fe/src/presentation/common/touchable_highlight_button.dart';
// import 'package:fe/src/shared/theme/color_theme.dart';
// import 'package:intl/intl.dart';
//
// class DomainButton extends ConsumerStatefulWidget {
//   final DomainScoreModel domain;
//   final void Function() onTap;
//
//   const DomainButton({super.key, required this.domain, required this.onTap});
//
//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _DomainButtonState();
// }
//
// class _DomainButtonState extends ConsumerState<DomainButton> {
//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;
//
//     return TouchableHighlightButton(
//       borderColor: ColorTheme.slateColor[300]!,
//       borderRadius: 10,
//       onTap: widget.onTap,
//       child: Container(
//         width: double.infinity,
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   widget.domain.name,
//                   style: textTheme.headlineMedium,
//                 ),
//                 Icon(
//                   Icons.arrow_forward_ios,
//                   size: 16,
//                   color: ColorTheme.slateColor[500],
//                 ),
//               ],
//             ),
//             const SizedBox(height: 12),
//             Container(
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   color: ColorTheme.slateColor[200]!,
//                   width: 1,
//                 ),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   _scoreColumn('percentileScore',
//                       widget.domain.score.toString(), textTheme),
//                   const SizedBox(width: 30),
//                   _scoreColumn(
//                       'myScore', widget.domain.avg.toString(), textTheme),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _scoreColumn(String labelKey, String score, TextTheme textTheme) {
//     return Column(
//       children: [
//         Text(
//           Intl.message(labelKey),
//           style: textTheme.bodySmall!.copyWith(
//             color: ColorTheme.slateColor[500],
//           ),
//         ),
//         const SizedBox(height: 8),
//         Text(
//           score,
//           style: textTheme.headlineLarge!.copyWith(
//             color: ColorTheme.primaryColor,
//           ),
//         ),
//       ],
//     );
//   }
// }
