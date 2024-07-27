import 'package:e_commerce/features/home/presentation/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoryScroll extends StatelessWidget {
  const CategoryScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(height: 40,
        child: ListView.builder(itemBuilder: (context,i){
          return CategoryCard();
        },
          itemCount:7,
          scrollDirection: Axis.horizontal,),

      )
    );
  }
}
