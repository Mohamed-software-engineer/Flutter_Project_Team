import 'package:e_commerce/features/home/presentation/widgets/cartCard.dart';
import 'package:flutter/cupertino.dart';

import '../../data/models/list_of_cart_product.dart';

class CartCardList extends StatefulWidget {
  const CartCardList({super.key});

  @override
  State<CartCardList> createState() => _CartCardListState();
}

class _CartCardListState extends State<CartCardList> {
  List<DeliveryProduct> deliveryProduct = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      deliveryProduct = listOfCartProduct;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        //primary: false,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index){
          return CartCard(name: deliveryProduct[index].title, price: deliveryProduct[index].price, imageUrl: deliveryProduct[index].imageUrl);
        },
        itemCount: deliveryProduct.length,
      ),
    );
  }
}
