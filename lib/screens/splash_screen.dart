// import 'package:cloud_app/screens/intro.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     Future.delayed(Duration(seconds: 3), () => Get.off(Intro()));
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xFFF2F4F7), Color(0xFFCED7E1), Color(0xFFBCC8D6)],
//             begin: Alignment.topRight,
//             end: Alignment.bottomLeft,
//           ),
//         ),
//         child: const Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image(image: AssetImage('assets/splashimage.png'), height: 250),
//               Text(
//                 'Weather',
//                 style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
//               ),
//               Text(
//                 'Forecast',
//                 style: TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.w700,
//                   color: Colors.grey,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
