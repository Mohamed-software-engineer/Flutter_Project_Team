import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final double rate;
  final rateNum;
  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.rate, this.rateNum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "detailScreen");
      },
<<<<<<< HEAD
      child: ShoppingCard(
        imageUrl: 'assets/shoes.jpeg',
        title: 'Product Title',
        description: 'This is a brief description of the product.',
        price: '\$29.99',
      ),
    );
  }
}



class ShoppingCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String price;

  const ShoppingCard({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                height: 160,
                width: double.infinity,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              description,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
              maxLines: 2,
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 20.0),
                    SizedBox(width: 5.0),
                    Text(
                      '4.7',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
=======
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    height: 140,
                    width: double.infinity,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.star,
                      color: Color(0xffFFDD4F),
                      size: 20,
                    ),
                    Text(
                      "${rate}",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Text(
                      " ($rateNum)",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    )
                  ],
                ),
              ],
            ),
          ),
>>>>>>> 3bf6102c63c3a6ea6d4ea569b908e1a3a3f43fb1
        ),
      ),
    );
  }
}
