import 'package:dio/dio.dart';
import 'package:e_commerce/features/home/presentation/widgets/details_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utiles/apiservice.dart';
import '../../data/repo/home_repo_impl.dart';
import '../state_mangment/cubit.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(HomeRepoImpl(ApiService(Dio()))),
      child: Scaffold(
        appBar:AppBar(iconTheme: IconThemeData(color:Colors.white,size: 30),
          backgroundColor: Colors.orange,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: IconButton(icon:Icon(Icons.shopping_cart),
                onPressed: (){
                  Navigator.pushNamed(context, "cartScreen");
                },
              ),
            )
          ],
        ),
        body: DetailsCard(),
      ),
    );
  }
}
