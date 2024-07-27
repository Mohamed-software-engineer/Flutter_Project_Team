import 'package:dio/dio.dart';
import 'package:e_commerce/core/utiles/apiservice.dart';
import 'package:e_commerce/features/auth/presentation/views/splash.dart';
<<<<<<< HEAD
import 'package:e_commerce/features/home/data/repo/home_repo_impl.dart';
import 'package:e_commerce/features/home/presentation/state_mangment/cubit.dart';
=======
import 'package:e_commerce/features/auth/presentation/views/welcom_screen.dart';
import 'package:e_commerce/features/home/presentation/views/cart_screen.dart';
>>>>>>> 389f5c37f610e5db45f7e492f0cc130bf5ab7bd0
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
      routes: {"detailScreen": (context) => DetailsScreen(),"cartScreen": (context) => CartScreen()},
      home: Splash(),
    );
  }
}
