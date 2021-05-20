// import 'dart:async';
// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:kinexcs_kimian_odyssey/view/wrapper.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
//
// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(
//       Duration(seconds: 3),
//           () => {
//         Navigator.of(context)
//             .pushReplacement(MaterialPageRoute(builder: (context) => Wrapper()))
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async {
//         return true;
//       },
//       child: Scaffold(
//         body: Stack(
//           fit: StackFit.expand,
//           children: <Widget>[
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//               ),
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 Expanded(
//                   flex: 2,
//                   child: Container(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Image.asset(
//                           'assets/event_images/Kinexcs.png',
//                           scale: 12,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       SpinKitRing(color: Colors.black, size: 50.0),
//                       Padding(
//                         padding: EdgeInsets.only(top: 10),
//                       ),
//                       AutoSizeText(
//                         'Enhance Your',
//                         style: TextStyle(
//                           color: Colors.grey,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       AutoSizeText(
//                         'Recovery With Kinexcs',
//                         style: TextStyle(
//                           color: Colors.grey,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }