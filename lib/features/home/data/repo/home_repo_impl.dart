import 'package:dartz/dartz.dart';

import '../../../../core/errors/faliure.dart';
import '../../../../core/utiles/apiservice.dart';
import '../models/product_by_category_moedl.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiservice;

  HomeRepoImpl(this.apiservice);

  @override
  Future<Either<Faliure, List<ProductByCategoryMoedl>>> featchAll() async {
    Map<String, String> querystring = {
      "category_id": "2478868012",
      "page": "1",
      "country": "US",
      "sort_by": "RELEVANCE",
      "product_condition": "ALL",
    };
    List<ProductByCategoryMoedl> product = [];
    try {
      var newData = await apiservice.Get(querystring: querystring); //newdata = response.data
      for (var i in newData['data']['products']) {
        product.add(ProductByCategoryMoedl.fromJson(i));
      }
      print('API Response: $newData');
      return right(product);
    } catch (e) {
      return left(ServerError(e.toString()));
    }
  }
}
