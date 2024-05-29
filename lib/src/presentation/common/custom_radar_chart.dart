// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:fe/src/data/model/model.dart';
// import 'package:fe/src/shared/theme/color_theme.dart';
//
// class CustomRadarChart extends StatefulWidget {
//   final List<List<DomainScoreModel>> domainDataSets;
//
//   const CustomRadarChart({super.key, required this.domainDataSets});
//
//   @override
//   State<CustomRadarChart> createState() => CustomRadarChartState();
// }
//
// class CustomRadarChartState extends State<CustomRadarChart> {
//   List<RadarDataSet> buildRadarDataSet() {
//     List<RadarDataSet> radarDataSets = [];
//     int index = 0;
//
//     for (var domainDataSet in widget.domainDataSets) {
//       List<RadarEntry> radarEntries = domainDataSet.map((domainScore) {
//         double value = domainScore.score.toDouble();
//         return RadarEntry(value: value);
//       }).toList();
//
//       Color fillColor;
//       Color borderColor;
//
//       // 첫 번째 데이터 셋에 대한 색상 설정
//       if (index == 0) {
//         fillColor = ColorTheme.primaryColor.withOpacity(0.2);
//         borderColor = ColorTheme.primaryColor;
//       } else {
//         fillColor = ColorTheme.secondaryColor[500]!.withOpacity(0.2);
//         borderColor = ColorTheme.secondaryColor[500]!;
//       }
//
//       radarDataSets.add(RadarDataSet(
//         fillColor: fillColor,
//         borderColor: borderColor,
//         entryRadius: 2,
//         dataEntries: radarEntries,
//         borderWidth: 1,
//       ));
//
//       index++;
//     }
//
//     radarDataSets.add(RadarDataSet(
//       entryRadius: 4,
//       fillColor: Colors.transparent,
//       borderColor: Colors.transparent,
//       dataEntries: [
//         const RadarEntry(value: 20),
//         const RadarEntry(value: 40),
//         const RadarEntry(value: 60),
//         const RadarEntry(value: 80),
//         const RadarEntry(value: 100),
//       ],
//     ));
//
//     return radarDataSets;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;
//     final firstDomain = widget.domainDataSets[0];
//
//     return AspectRatio(
//       aspectRatio: 1.3,
//       child: RadarChart(
//         RadarChartData(
//           dataSets: buildRadarDataSet(),
//           borderData: FlBorderData(show: false),
//           titlePositionPercentageOffset: 0.15,
//           getTitle: (index, angle) {
//             if (index < firstDomain.length) {
//               return RadarChartTitle(
//                 text: firstDomain[index].name,
//                 positionPercentageOffset: index == 0
//                     ? 0.1
//                     : index == 4
//                         ? 0.3
//                         : 0.2, // 필요에 따라 조정
//               );
//             }
//             return const RadarChartTitle(text: '');
//           },
//           titleTextStyle: textTheme.bodySmall!.copyWith(
//             color: ColorTheme.slateColor[500],
//           ),
//           radarShape: RadarShape.polygon,
//           tickCount: 5,
//           ticksTextStyle: const TextStyle(
//             color: Colors.transparent,
//           ),
//           radarBackgroundColor: Colors.transparent,
//           radarBorderData: const BorderSide(color: Colors.transparent),
//           tickBorderData:
//               BorderSide(color: ColorTheme.slateColor[200]!, width: 1),
//           gridBorderData:
//               BorderSide(color: ColorTheme.slateColor[200]!, width: 1),
//         ),
//         swapAnimationDuration: const Duration(milliseconds: 400),
//       ),
//     );
//   }
// }
