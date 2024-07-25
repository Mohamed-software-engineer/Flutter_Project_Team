import 'package:e_commerce/features/home/presentation/widgets/carouselSlider.dart';
import 'package:e_commerce/features/home/presentation/widgets/category_scroll.dart';
import 'package:e_commerce/features/home/presentation/widgets/product_scroll.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0f0c29),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 45,
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CategoryScroll()),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "popular product",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          )),
          SliverToBoxAdapter(child: SizedBox(
            width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ProductScroll())),
        ],
      ),
    );
  }
}
