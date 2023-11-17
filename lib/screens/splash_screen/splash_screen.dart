import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocerease/gloabals/gloabal.dart';
import 'package:grocerease/styles/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    const delay = Duration(seconds: 4);
    Future.delayed(delay, () => onTimerFinished());

  }

  void onTimerFinished() {
    if(FirebaseAuth.instance.currentUser != null){
      getCurrentUsersData();
      Navigator.pushReplacementNamed(context, "/location");
    }
    else {
      Navigator.of(context).pushReplacementNamed('/onboarding');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: splashScreenIcon(),
      ),
    );
  }

  Widget splashScreenIcon() {
  String iconPath = "assets/icons/splash_screen_icon.svg";
  return SvgPicture.asset(
    iconPath,
  );
}
}




// import 'dart:async';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:grocerease/gloabals/gloabal.dart';
// import 'package:grocerease/styles/colors.dart';
// import 'package:grocerease/styles/theme.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
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
//
//     const delay = Duration(seconds: 4);
//     Future.delayed(delay, () => onTimerFinished());
//
//   }
//
//   void onTimerFinished() {
//     Navigator.of(context).pushReplacementNamed('/onboarding');
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.primaryColor,
//       body: Center(
//         child: splashScreenIcon(),
//       ),
//     );
//   }
// }
//
// Widget splashScreenIcon() {
//   String iconPath = "assets/icons/splash_screen_icon.svg";
//   return SvgPicture.asset(
//     iconPath,
//   );
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: themeData,
//
//     );
//
//   }
//   void openSplashScreen(BuildContext context) {
//       Navigator.pushReplacementNamed(context, "/onboardingscreen");
//   }
// }
// /*
// Create variable name as notFirstTime(bool type) in sharedPreference
// When click on GetStarted set this var to true and move to Login Screen
//
// Now on splash Screen
// get var notFirstTime from sp
// if(false) => onboarding
// else => {
// if(FirebaseAuth.instance.currentUser){
// Store USer INformation
// Navigate to account
// }
// else{
// Navigate to login
// }
//
// }
// */
//
//
//
//
//
