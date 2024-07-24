import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
        InkWell(
          onTap: (){print("1");},
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text("Category",style: TextStyle(fontSize: 20,color: Colors.blue),),
          ),
        )
    );
  }
}
