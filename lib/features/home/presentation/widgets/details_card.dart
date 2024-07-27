import 'package:e_commerce/features/home/data/models/product_by_category_moedl.dart';
import 'package:flutter/material.dart';

class DetailsCard extends StatefulWidget {
  const DetailsCard({Key? key}) : super(key: key);

  @override
  State<DetailsCard> createState() => _DetailsCardState();
}

class _DetailsCardState extends State<DetailsCard> {

  @override
  Widget build(BuildContext context) {
  var data = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    return DCard(
      imageUrl: '${data["imageUrl"]}',
      title: '${data["title"]}',
      description:
          '${data["description"]!=null?data["description"]:"this product has no description"}',
      price: '${data["price"]}',
      rating: 4.5,
      reviewsCount: 123,
      availableItems: 10, companytitle: 'alpha company ',
    );
  }
}

class DCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String companytitle;
  final String description;
  final String price;
  final double rating;
  final int reviewsCount;
  final int availableItems;

  const DCard({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
    required this.reviewsCount,
    required this.availableItems, required this.companytitle,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(13.0),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                height: 300,
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
            Text(
              companytitle,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              description,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Available : $availableItems',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20.0),
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
                    Icon(Icons.star, color: Colors.orange, size: 20.0),
                    SizedBox(width: 5.0),
                    Text(
                      '$rating ($reviewsCount)',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 70.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add to Cart action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  fixedSize: Size(250, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'Add to Cart ',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
