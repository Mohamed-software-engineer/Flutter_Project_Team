import 'package:e_commerce/features/home/presentation/state_mangment/cubit.dart';
import 'package:e_commerce/features/home/presentation/state_mangment/states.dart';
import 'package:e_commerce/features/home/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScroll extends StatefulWidget {
  const ProductScroll({Key? key}) : super(key: key);

  @override
  State<ProductScroll> createState() => _ProductScrollState();
}

class _ProductScrollState extends State<ProductScroll> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ProductCubit cubit = BlocProvider.of<ProductCubit>(context);
    cubit.featchData();
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductCubit, ProductStates>(
        builder: (context, state){
      if (state is LoadingState)
        {
          return const Center(child: CircularProgressIndicator());
        }
      else if (state is LoadedState)
        {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
              ),
              itemCount: state.product.length,
          //    physics: NeverScrollableScrollPhysics(),
             // shrinkWrap: false,
              itemBuilder: (context, index) {
                return ProductCard(
                  imageUrl: state.product[index].productPhoto ?? 'assets/NOIMAGE.jpeg',
                  title: state.product[index].productTitle ?? '',
                  price: state.product[index].productPrice ?? '0.0',
                  rate: state.product[index].productStarRating ?? 0,
                  rateNum: state.product[index].productNumRatings ?? '0',
                  description: '',
                );
              },
            ),
          );
        }
      else if (state is ErrorState)
        {
          return Text("Error: ${state.error}");
        }
      else{
        return const Center(
          child: Text("No Product Found"),
        );
      }
    }, listener: (context, state) {
    if (state is ErrorState) {
    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
    content: Text('Error: ${state.error}'),
    ),
    );
    }
    });
  }
}

/*SizedBox(
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
                      rateNum: product[index].productNumRatings, description: '',
                    );
                  },
                ),
              )*/
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