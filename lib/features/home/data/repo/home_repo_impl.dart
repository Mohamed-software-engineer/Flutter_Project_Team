import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/faliure.dart';
import 'package:e_commerce/core/utiles/apiservice.dart';
import 'package:e_commerce/features/home/data/models/product.dart';
import 'package:e_commerce/features/home/data/repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo{
    final ApiService apiservice;

    HomeRepoImpl(this.apiservice);

  @override
  Future<Either<Faliure, List<Product>>> featchAll() async{
    try {
      var data= await apiservice.Get(endpoint: "");
      List<Product> PRODUCT=[];
      // for(Map i in data[]){
      //   PRODUCT.add(Product.fromJson(i));
      // }
      return right(PRODUCT);
    } catch (e) {
      return left(ServerError(e.toString()));
      // TODO
    }
  }

  @override
  Future<Either<Faliure, List<Product>>> featchElectronics() async{
    try {
      var data= await apiservice.Get(endpoint: "");
      List<Product> PRODUCT=[];
      // for(Map i in data[]){
      //   PRODUCT.add(Product.fromJson(i));
      // }
      return right(PRODUCT);
    } catch (e) {
      return left(ServerError(e.toString()));
      // TODO
    }
  }

  @override
  Future<Either<Faliure, List<Product>>> featchJewelery() async{
    try {
      var data= await apiservice.Get(endpoint: "");
      List<Product> PRODUCT=[];
      // for(Map i in data[]){
      //   PRODUCT.add(Product.fromJson(i));
      // }
      return right(PRODUCT);
    } catch (e) {
      return left(ServerError(e.toString()));
      // TODO
    }
  }

  @override
  Future<Either<Faliure, List<Product>>> featchMencloth() async{
    try {
      var data= await apiservice.Get(endpoint: "");
      List<Product> PRODUCT=[];
      // for(Map i in data[]){
      //   PRODUCT.add(Product.fromJson(i));
      // }
      return right(PRODUCT);
    } catch (e) {
      return left(ServerError(e.toString()));
      // TODO
    }
  }

  @override
  Future<Either<Faliure, List<Product>>> featchWomencloth() async{
    try {
      var data= await apiservice.Get(endpoint: "");
      List<Product> PRODUCT=[];
      // for(Map i in data[]){
      //   PRODUCT.add(Product.fromJson(i));
      // }
      return right(PRODUCT);
    } catch (e) {
      return left(ServerError(e.toString()));
      // TODO
    }
  }

}