import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/faliure.dart';
import 'package:e_commerce/features/home/data/models/product.dart';


abstract class HomeRepo{
  Future<Either<Faliure,List<Product>>> featchAll();
  Future<Either<Faliure,List<Product>>> featchMencloth();
  Future<Either<Faliure,List<Product>>> featchWomencloth();
  Future<Either<Faliure,List<Product>>> featchElectronics();
  Future<Either<Faliure,List<Product>>> featchJewelery();


}

