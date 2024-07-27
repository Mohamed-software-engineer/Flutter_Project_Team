import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  final String? name;
  final String? price;
  final String? imageUrl;

  CartCard({required this.name, required this.price, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Container(padding: EdgeInsets.all(10),
        decoration:
        BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(10)),
        child: Row(
          children:[
            ClipRRect(borderRadius: BorderRadius.circular(5),
                child: Image.network(imageUrl!, width: 100, height: 100)),
            SizedBox(width: 10),
            Expanded(
              child: Text(name!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),maxLines: 2,),
            ),
            Text('\$${price}',style: TextStyle(fontSize:17,fontWeight: FontWeight.bold),),
            SizedBox(width: 10),
            Row(
              children:[
                IconButton(icon: Icon(Icons.remove), onPressed: () {}),
                Text('1',style:TextStyle(fontSize: 15),),
                IconButton(icon: Icon(Icons.add), onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}