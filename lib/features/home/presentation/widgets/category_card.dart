import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return InkWell(onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(width: 100,alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black,width: 1),
            borderRadius: BorderRadius.circular(20)
          ),
          child:
            Text("Category",style: TextStyle(fontSize: 16,color: Colors.black54,fontWeight: FontWeight.bold),)
        ),
      ),
    );
  }
}
