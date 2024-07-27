import 'package:e_commerce/features/auth/presentation/views/splash.dart';
import 'package:e_commerce/features/home/presentation/views/details_screen.dart' show DetailsScreen;
import 'package:flutter/material.dart';

import 'features/home/presentation/views/cart_screen.dart';

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
