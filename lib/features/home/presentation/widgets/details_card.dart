import 'package:e_commerce/features/home/data/models/product_by_category_moedl.dart';
import 'package:e_commerce/features/home/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/list_of_cart_product.dart';
import '../state_mangment/cubit.dart';
import '../state_mangment/states.dart';

class DetailsCard extends StatefulWidget {
  const DetailsCard({Key? key}) : super(key: key);

  @override
  State<DetailsCard> createState() => _DetailsCardState();
}

class _DetailsCardState extends State<DetailsCard> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ProductCubit cubit = BlocProvider.of<ProductCubit>(context);
    cubit.featchData();
  }
  @override
  Widget build(BuildContext context) {
  var data = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;

    return DCard(
        imageUrl: data["imageUrl"],
        title: data["title"],
        rate: data["rate"],
        rateNum: data["rateNum"],
        productPrice: data["productPrice"],
        productOriginalPrice: data["productOriginalPrice"],
        productNumOffers: data["productNumOffers"],
        productMinimumOfferPrice: data["productMinimumOfferPrice"],
        isBestSeller: data["isBestSeller"],
        isAmazonChoice: data["isAmazonChoice"],
        salesVolume: data["salesVolume"],
        delivery: data["delivery"],
        hasVariations: data["hasVariations"],
      deliveryProduct: data["deliveryProduct"],
      );
  }
}

class DCard extends StatelessWidget {
  final imageUrl;
  final title;
  final productPrice;
  final productOriginalPrice;
  final productNumOffers;
  final productMinimumOfferPrice;
  final isBestSeller;
  final isAmazonChoice;
  final salesVolume;
  final delivery;
  final hasVariations;
  final rate;
  final rateNum;
  final ProductByCategoryMoedl deliveryProduct;
  const DCard({
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
    return Container(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(imageUrl),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Row(
                children: [

                  Icon(Icons.star, color: Colors.orange, size: 30),
                  Icon(Icons.star, color: Colors.orange, size: 30.0),
                  Icon(Icons.star, color: Colors.orange, size: 30.0),
                  Icon(Icons.star, color: Colors.orange, size: 30.0),
                  Icon(Icons.star_half, color: Colors.orange, size: 30.0),
                  SizedBox(width: 5.0),
                  Text(
                    '$rate ',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '($rateNum)',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.green[600],
                    ),
                  ),
                ],
              ),
              Text(
                '$productOriginalPrice for each unit',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'You can also get offers if you buy at least $productNumOffers items,',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                '$productMinimumOfferPrice for each one',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                '$salesVolume',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),Text(
                '$delivery',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),

              SizedBox(height: 70.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    listOfCartProduct.add(DeliveryProduct(imageUrl, title, productOriginalPrice));
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.orange,
                          content: Text('Product added to cart successfully'),
                        ),
                    );
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
      ),
    );
  }
}
