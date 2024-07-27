import 'package:e_commerce/features/home/presentation/widgets/details_card.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(iconTheme: IconThemeData(color:Colors.white,size: 30),
        backgroundColor: Colors.orange,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: IconButton(icon:Icon(Icons.shopping_cart),
              onPressed: (){
                Navigator.pushNamed(context, "cartScreen");
              },
            ),
          )
        ],
      ),
      body: DetailsCard(),
    );
  }
}
