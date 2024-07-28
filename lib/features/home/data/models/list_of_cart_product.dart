import 'package:e_commerce/features/home/data/models/product_by_category_moedl.dart';

class DeliveryProduct{
  final imageUrl;
  final title;
  final price;

  DeliveryProduct(this.imageUrl, this.title, this.price);
}

List<DeliveryProduct> listOfCartProduct = [];