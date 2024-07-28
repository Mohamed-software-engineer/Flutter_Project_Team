import 'package:e_commerce/features/home/presentation/state_mangment/cubit.dart';
import 'package:e_commerce/features/home/presentation/state_mangment/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCard extends StatelessWidget {
  final String? name;
  String? price;
  final String? imageUrl;
  CartCard({super.key, required this.name, required this.price, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    double numberOfProduct;
    return BlocConsumer<ProductCubit, ProductStates>(
      builder: (BuildContext context, ProductStates state) {
        var cubit = BlocProvider.of<ProductCubit>(context);
        return Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    imageUrl!,
                    width: 100,
                    height: 100,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(Icons.error, size: 100, color: Colors.red);
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    name!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  '${cubit.resulte}',
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () {
                        double? priceValue = double.tryParse(price!);
                        if (priceValue != null) {
                          cubit.decrement(priceValue);
                        }
                      },
                    ),
                    Text(
                      '${cubit.Anum}',
                      style: const TextStyle(fontSize: 15),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        double? priceValue = double.tryParse(price!);
                        if (priceValue != null) {
                          cubit.increment(priceValue);
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },

      listener: (BuildContext context, ProductStates state) {  },

    );
  }
}