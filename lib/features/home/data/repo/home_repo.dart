import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/faliure.dart';
import 'package:e_commerce/features/home/data/models/product_by_category_moedl.dart';

abstract class HomeRepo {
  Future<Either<Faliure, List<ProductByCategoryMoedl>>> featchAll();
  // Future<Either<Faliure, List<ProductByCategoryMoedl>>> featchMencloth();
  // Future<Either<Faliure, List<ProductByCategoryMoedl>>> featchWomencloth();
  // Future<Either<Faliure, List<ProductByCategoryMoedl>>> featchElectronics();
  // Future<Either<Faliure, List<ProductByCategoryMoedl>>> featchJewelery();
}
