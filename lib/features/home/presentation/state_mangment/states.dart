import 'package:e_commerce/features/home/data/models/product_by_category_moedl.dart';

abstract class ProductStates {}

class InitState extends ProductStates {}

class LoadingState extends ProductStates {}

class LoadedState extends ProductStates {
  List<ProductByCategoryMoedl> product;

  LoadedState(this.product);
}

class ErrorState extends ProductStates {
  final String error;

  ErrorState(this.error);
}

class refesh extends ProductStates {}