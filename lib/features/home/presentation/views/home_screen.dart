import 'package:e_commerce/features/home/presentation/widgets/carouselSlider.dart';
import 'package:e_commerce/features/home/presentation/widgets/category_scroll.dart';
import 'package:e_commerce/features/home/presentation/widgets/product_scroll.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0f0c29),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 45,
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
              ),
            ),

            SizedBox(height: 15,),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("Shoping cart",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),

            SizedBox(height: 15,),

            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text("Contact us",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),

            SizedBox(height: 15,),

            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text("About us",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),

            SizedBox(height: 15,),

            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.output),
                title: Text("SignOut",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
          ],),
        ),

      ),

      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: Carousel(),),
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
          SliverToBoxAdapter(child: SizedBox(
            width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ProductScroll())),
        ],
      ),
    );
  }
}
