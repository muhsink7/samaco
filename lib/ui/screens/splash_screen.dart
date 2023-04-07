import 'package:flutter/material.dart';
import 'package:samaco/constants/image_constants.dart';
import 'package:samaco/ui/screens/initial_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';


class SplashScreen extends StatefulWidget {
  static String id = 'splash_screen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animateState = false;

  @override
  void initState() {
    super.initState();
    // startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    // print("animateState : $animateState  ${getAnimatedPadding(animateState)}");
    return AnimatedSplashScreen(
      splash: Image.asset(AppImages.logo),
      nextScreen: const InitialScreen(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.rightToLeftWithFade,
      backgroundColor: Colors.white,
      animationDuration: const Duration(milliseconds: 1600),
      duration: 2000,
    );
  }
}
//   Scaffold(
//     backgroundColor: Colors.white,
//     body: AnimatedContainer(
//         duration: const Duration(milliseconds: 800),
//         curve: Curves.easeInBack,
//         width: double.infinity,
//         height: double.infinity,
//         // alignment: getAnimateAlignment(),
//         // padding: getAnimatedPadding(animateState),
//         child:
//             const Image(image: AssetImage("assets/images/samacologo.png"))),
//   );
// }
//
// Future startAnimation() async {
//   await Future.delayed(const Duration(milliseconds: 800));
//   setState(() {
//     animateState = true;
//   });
//   // await Future.delayed(const Duration(milliseconds: 800));
//   // setState(() {
//   //   animateState = 2;
//   // });
//   // await Future.delayed(const Duration(milliseconds: 800));
//   // setState(() {
//   //   animateState = 3;
//   // });
//   // await Future.delayed(const Duration(milliseconds: 500));
//   // setState(() {
//   //   animateState = 4;
//   // });
//   await Future.delayed(const Duration(milliseconds: 5000));
//   // Navigator.pushNamed(context, InitialScreen.id);
// }
//
// // getAnimateAlignment() {
// //   switch (animateState) {
// //     case 0:
// //       return Alignment.bottomCenter;
// //     case 1:
// //       return Alignment.bottomRight;
// //     case 2:
// //       return Alignment.bottomLeft;
// //     case 3:
// //       return Alignment.center;
// //     default:
// //       return Alignment.bottomCenter;
// //   }
// // }
//
// // getAnimatedPadding(int state) {
// //   var height = MediaQuery.of(context).size.height;
// //
// //   print("height : ${height * .4}");
// //   if (state == 1) {
// //     return EdgeInsets.only(bottom: (height * .25));
// //   }
// //   if (state == 2) {
// //     return EdgeInsets.only(bottom: (height * .25));
// //   }
// //   if (state == 3) {
// //     return const EdgeInsets.only(bottom: 0);
// //   }
// //
// //   return const EdgeInsets.only(bottom: 0);
// // }
