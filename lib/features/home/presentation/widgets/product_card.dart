import 'package:e_commerce/features/home/data/models/product_by_category_moedl.dart';
import 'package:flutter/material.dart';


class ProductCard extends StatelessWidget {
  final  imageUrl;
  final  title;
  final  productPrice;
  final productOriginalPrice;
  final productNumOffers;
  final productMinimumOfferPrice;
  final isBestSeller;
  final isAmazonChoice;
  final salesVolume;
  final delivery;
  final hasVariations;
  final  rate;
  final rateNum;
  final ProductByCategoryMoedl deliveryProduct;


  const ProductCard({
    required this.imageUrl,
    required this.title,
    required this.rate,
    required this.rateNum,
    required this.productPrice,
    required this.productOriginalPrice,
    required this.productNumOffers,
    required this.productMinimumOfferPrice,
    required this.isBestSeller,
    required this.isAmazonChoice,
    required this.salesVolume,
    required this.delivery,
    required this.hasVariations,
    required this.deliveryProduct,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
      Navigator.pushNamed(context, "detailScreen",
        arguments:{
          "productPrice":productPrice,
          "rate":rate,
          "rateNum": rateNum,
          "imageUrl":imageUrl,
          "title":title,
          "productOriginalPrice": productOriginalPrice,
          "productNumOffers": productNumOffers,
          "productMinimumOfferPrice": productMinimumOfferPrice,
          "isBestSeller": isBestSeller,
          "isAmazonChoice": isAmazonChoice,
          "salesVolume": salesVolume,
          "delivery": delivery,
          "deliveryProduct": deliveryProduct,
        } );},
      child:
      Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Flexible(
            child: Column( // Remove Expanded or move it correctly
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
                      productPrice,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.star,
                      color: Color(0xffFFDD4F),
                      size: 20,
                    ),
                    Text(
                      "$rate",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      " ($rateNum)",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
