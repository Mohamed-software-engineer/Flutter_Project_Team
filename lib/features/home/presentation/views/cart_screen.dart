import 'package:dio/dio.dart';
import 'package:e_commerce/features/home/presentation/widgets/SummaryCard.dart';
import 'package:e_commerce/features/home/presentation/widgets/cartCard.dart';
import 'package:e_commerce/features/home/presentation/widgets/cart_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utiles/apiservice.dart';
import '../../data/repo/home_repo_impl.dart';
import '../state_mangment/cubit.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(HomeRepoImpl(ApiService(Dio()))),
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.orange,),

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CartCardList(),
              Summary(),
              SizedBox(height: 40,),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Add to Cart action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    fixedSize: Size(250, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    'Checkout',
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
/*SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CartCard(
                name: "Nike Men's Flex Experience RN3",
                price: "129.00",
                imageUrl: 'assets/shoes.jpeg',
              ),
              CartCard(
                name: "Nike Men's Flex Experience RN3",
                price: "129.00",
                imageUrl: 'assets/shoes.jpeg',
              ),
              CartCard(
                name: "Nike Men's Flex Experience RN3",
                price: "129.00",
                imageUrl: 'assets/shoes.jpeg',
              )

              ,

              SizedBox(height: 20,),
              Summary(),
              SizedBox(height: 40,),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Add to Cart action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    fixedSize: Size(250, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    'Checkout',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ),          ],
          ),
        ),
      )*/