import 'package:dio/dio.dart';
import 'package:e_commerce/core/utiles/apiservice.dart';
import 'package:e_commerce/features/home/data/repo/home_repo_impl.dart';
import 'package:e_commerce/features/home/presentation/state_mangment/cubit.dart';
import 'package:e_commerce/features/home/presentation/widgets/carouselSlider.dart';
import 'package:e_commerce/features/home/presentation/widgets/category_scroll.dart';
import 'package:e_commerce/features/home/presentation/widgets/product_scroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return BlocProvider(
      create: (context) => ProductCubit(HomeRepoImpl(ApiService(Dio()))),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0f0c29),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 45,
=======
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color:Colors.white,size: 30),
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

      drawer: Drawer(

        child: Container(padding: EdgeInsets.all(15),
          child: ListView(children: [
            SizedBox(height: 25,),

            Row(children:[
              Container(width: 75,height: 75,
                child: ClipRRect(borderRadius:BorderRadius.circular(50),
                  child: Image.asset("assets/pfp.jpeg",fit:BoxFit.fill,),
                ),),
              Expanded(
                child: ListTile(
                  title: Text("Omar Adel",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
                  subtitle: Text(" omar123@gmail.com",style: TextStyle(fontSize: 14),),
                ),
              )
            ],),
            //
            SizedBox(height: 30),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context,"homeScreen" );
              },
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home",style: TextStyle(fontWeight: FontWeight.bold),),
>>>>>>> 389f5c37f610e5db45f7e492f0cc130bf5ab7bd0
              ),
            )
          ],
        ),
        drawer: Drawer(
          child: Container(
            padding: EdgeInsets.all(15),
            child: ListView(
              children: [
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Container(
                      width: 75,
                      height: 75,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "assets/pfp.jpeg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text(
                          "Omar Adel",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 21),
                        ),
                        subtitle: Text(
                          " omar123@gmail.com",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "homeScreen");
                  },
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text(
                      "Home",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text(
                      "Shoping cart",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text(
                      "Contact us",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(Icons.info),
                    title: Text(
                      "About us",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(Icons.output),
                    title: Text(
                      "SignOut",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Carousel(),
            ),
            SliverToBoxAdapter(child: CategoryScroll()),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "popular product",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            )),
            SliverToBoxAdapter(
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: const ProductScroll())),
          ],
        ),
      ),
    );
  }
}
