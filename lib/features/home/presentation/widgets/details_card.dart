import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DCard(
      imageUrl: 'assets/NOIMAGE.jpeg',
      title: 'Product Title',
      description:
          'This is a detailed description of the product. It covers all the features, specifications, and benefits of the product This is a detailed description of the product. It covers all the features, specifications, and benefits .',
      price: '\$29.99',
      rating: 4.5,
      reviewsCount: 123,
      availableItems: 10, companytitle: 'company name',
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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(13.0),
            child: Image.asset(
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
    );
  }
}
