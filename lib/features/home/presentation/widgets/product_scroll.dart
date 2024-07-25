import 'package:dio/dio.dart';
import 'package:e_commerce/core/utiles/apiservice.dart';
import 'package:e_commerce/features/home/data/models/product_by_category_moedl.dart';
import 'package:e_commerce/features/home/data/repo/home_repo_impl.dart';
import 'package:e_commerce/features/home/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart' as dartz;
import '../../../../core/errors/faliure.dart';

class ProductScroll extends StatefulWidget {
  const ProductScroll({Key? key}) : super(key: key);

  @override
  State<ProductScroll> createState() => _ProductScrollState();
}

class _ProductScrollState extends State<ProductScroll> {
  HomeRepoImpl homeRepoImpl = HomeRepoImpl(ApiService(Dio()));

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dartz.Either<Faliure, List<ProductByCategoryMoedl>>>(
      future: homeRepoImpl.featchAll(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text("Error: ${snapshot.error}"),
          );
        } else if (snapshot.hasData) {
          return snapshot.data!.fold(
                (failure) => Text("Error: in has error layer : ${failure.toString()}"),
                (product) {
              if (product.isEmpty) {
                return const Center(
                  child: Text("No Products Found"),
                );
              }
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: product.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      imageUrl: product[index].productPhoto!,
                      title: product[index].productTitle!,
                      price: product[index].productPrice!,
                      rate: product[index].productStarRating!,
                      rateNum: product[index].productNumRatings,
                    );
                  },
                ),
              );
            },
          );
        } else {
          return const Center(child: Text("No Products Found"));
        }
      },
    );
  }
}

/*SliverGrid(delegate: SliverChildBuilderDelegate((context,i){
      return  ProductCard(imageUrl1: '', title1: '', description1: '', price1: '',);
    },childCount: 10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
<<<<<<< HEAD
            childAspectRatio: .6,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ));
  }
}
=======
            childAspectRatio: .7
        ))*/

/**/
>>>>>>> 3bf6102c63c3a6ea6d4ea569b908e1a3a3f43fb1
