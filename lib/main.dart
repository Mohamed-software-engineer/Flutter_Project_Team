import 'package:e_commerce/features/auth/presentation/screens/splash.dart';
import 'package:e_commerce/features/home/presentation/views/details_screen.dart';
import 'package:e_commerce/features/home/presentation/views/home_screen.dart';
import 'package:e_commerce/features/home/presentation/widgets/product_scroll.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {"detailScreen":(context)=>DetailsScreen()},
      home:HomeScreen(),
    );
  }
}
