import 'package:e_commerce/features/home/presentation/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoryScroll extends StatelessWidget {
  const CategoryScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
<<<<<<< HEAD
      child: SizedBox(height: 40,
        child: ListView.builder(itemBuilder: (context,i){
          return CategoryCard();
        },itemCount:7,scrollDirection: Axis.horizontal,),
=======
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          itemBuilder: (context, i) {
            return CategoryCard();
          },
          itemCount: 7,
          scrollDirection: Axis.horizontal,
        ),
>>>>>>> 3bf6102c63c3a6ea6d4ea569b908e1a3a3f43fb1
      ),
    );
  }
}
