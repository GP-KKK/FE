// import 'package:flutter/material.dart';
// import 'package:fe/src/data/model/model.dart';
// import 'package:fe/src/presentation/common/speech_bubble.dart';
// import 'package:fe/src/shared/theme/color_theme.dart';
// import 'package:intl/intl.dart';
//
// class SpeakingAssistantBubble extends StatelessWidget {
//   final String textContent;
//   final bool showAssistantName;
//   final Assistant assistant;
//
//   const SpeakingAssistantBubble({
//     super.key,
//     required this.textContent,
//     required this.assistant,
//     this.showAssistantName = false,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;
//     final assistant = this.assistant.toString().split('.').last;
//
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           margin: const EdgeInsets.only(bottom: 1.0),
//           width: 70,
//           height: 70,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage(
//                 'assets/images/ai_character/${assistant}_right.png',
//               ),
//             ),
//             shape: BoxShape.circle,
//           ),
//         ),
//         SpeechBubble(
//           tailPosition: TailPosition.top,
//           textContent: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               if (showAssistantName)
//                 Text(
//                   assistant == 'guardi'
//                       ? Intl.message('labelGuardi')
//                       : Intl.message('labelAnn'),
//                   style: textTheme.headlineSmall!
//                       .copyWith(color: ColorTheme.primaryColor),
//                 ),
//               if (showAssistantName)
//                 const SizedBox(
//                   height: 5.0,
//                 ),
//               Text(
//                 textContent,
//                 style: textTheme.bodyMedium,
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
