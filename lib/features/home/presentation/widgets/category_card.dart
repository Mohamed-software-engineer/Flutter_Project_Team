import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return InkWell(onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(width: 100,alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.black,width: 2),
            borderRadius: BorderRadius.circular(20)
          ),
          child:
            Text("Category",style: TextStyle(fontSize: 16,color: Colors.black54,fontWeight: FontWeight.bold),)
        ),
      ),
    );
=======
    return Container(
        child: InkWell(
      onTap: () {
        print("1");
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Text(
          "Category",
          style: TextStyle(fontSize: 20, color: Colors.blue),
        ),
      ),
    ));
>>>>>>> 3bf6102c63c3a6ea6d4ea569b908e1a3a3f43fb1
  }
}
