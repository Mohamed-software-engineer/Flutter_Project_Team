import 'package:dio/dio.dart';
import 'package:e_commerce/core/utiles/apiservice.dart';
import 'package:e_commerce/features/auth/presentation/views/splash.dart';
import 'package:e_commerce/features/home/data/repo/home_repo_impl.dart';
import 'package:e_commerce/features/home/presentation/state_mangment/cubit.dart';
import 'package:e_commerce/features/home/presentation/views/details_screen.dart';
import 'package:e_commerce/features/home/presentation/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/presentation/state_mangment/states.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {"detailScreen": (context) => DetailsScreen()},
      home: Splash(),
    );
  }
}
