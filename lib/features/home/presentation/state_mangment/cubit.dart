import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/faliure.dart';
import 'package:e_commerce/features/home/data/models/product_by_category_moedl.dart';
import 'package:e_commerce/features/home/presentation/state_mangment/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repo/home_repo_impl.dart';

class ProductCubit extends Cubit<ProductStates>
{
  HomeRepoImpl homeRepoImpl;
  int Anum = 0;
  double resulte = 0;
  ProductCubit(this.homeRepoImpl): super(InitState());

  featchData() async {

    emit(LoadingState());

    await Future.delayed(Duration(seconds: 2));

    Either<Faliure, List<ProductByCategoryMoedl>> products = await homeRepoImpl.featchAll();

    products.fold((failuer){
      emit(ErrorState(failuer.toString()));
    }, (products)
    {
      emit(LoadedState(products));
    });
  }

  void increment(double price){
    Anum++;
    resulte = Anum * price;
    emit(refesh());
  }
  void decrement(double price){
    Anum--;
    resulte = Anum * price;
    emit(refesh());
  }
}