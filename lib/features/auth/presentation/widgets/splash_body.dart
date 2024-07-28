import 'dart:async';
import 'package:e_commerce/core/utiles/assets.dart';
import 'package:e_commerce/features/auth/presentation/views/welcom_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return WelcomScreen();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(AssetsData.animationImage),
    );
  }
}
