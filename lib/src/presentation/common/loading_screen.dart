// import 'package:flutter/material.dart';
// import 'package:fe/src/presentation/layout/home_layout.dart';
// import 'package:fe/src/presentation/layout/static_layout.dart';
// import 'package:fe/src/shared/theme/color_theme.dart';
//
// class LoadingScreen extends StatefulWidget {
//   final bool isHome;
//   final bool isAppBarVisible;
//
//   const LoadingScreen({super.key, this.isHome = false, this.isAppBarVisible = true});
//
//   @override
//   State<LoadingScreen> createState() => _LoadingScreenState();
// }
//
// class _LoadingScreenState extends State<LoadingScreen> {
//   bool _showLoading = false;
//
//   void startloading() {
//     Future.delayed(const Duration(seconds: 1), () {
//       if (mounted) {
//         setState(() {
//           _showLoading = true;
//         });
//       }
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     startloading();
//   }
//
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     startloading();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return widget.isHome
//         ? HomeLayout(
//             children: _showLoading
//                 ? [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(
//                           width: 40,
//                           height: 40,
//                           child: CircularProgressIndicator(
//                             strokeWidth: 4,
//                             color: ColorTheme.primaryColor[300],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ]
//                 : [],
//           )
//         : StaticLayout(
//             isAppBarVisible: widget.isAppBarVisible,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             mainAxisAlignment: MainAxisAlignment.center,
//             backgroundColor: ColorTheme.slateColor[100],
//             children: _showLoading
//                 ? [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(
//                           width: 40,
//                           height: 40,
//                           child: CircularProgressIndicator(
//                             strokeWidth: 4,
//                             color: ColorTheme.primaryColor[300],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ]
//                 : [],
//           );
//   }
// }
