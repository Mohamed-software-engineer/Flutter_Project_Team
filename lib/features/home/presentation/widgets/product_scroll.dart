
import 'package:e_commerce/features/home/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
class ProductScroll extends StatelessWidget {
  const ProductScroll({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverGrid(delegate: SliverChildBuilderDelegate((context,i){
      return ProductCard();
    },childCount: 10),

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .6,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ));
  }
}