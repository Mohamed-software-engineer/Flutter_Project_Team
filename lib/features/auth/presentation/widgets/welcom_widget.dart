import 'package:e_commerce/features/auth/presentation/views/login.dart';
import 'package:flutter/material.dart';
import '../views/singUp.dart';

class WelcomWidget extends StatelessWidget {
  const WelcomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

<<<<<<< HEAD
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/flutter.png"),
              fit: BoxFit.cover,
            ),
=======
      body: Container(width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/flutter.png"),
            fit: BoxFit.cover,
>>>>>>> 389f5c37f610e5db45f7e492f0cc130bf5ab7bd0
          ),
        ),
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 60),
              child: Align(alignment:Alignment.topLeft,
                child: Text(
                  'HELLO!',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 460,),
            Column(children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) {
                        return Login();
                      }));                },
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor: Colors.white,
                  fixedSize: Size(270, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),

                ),
                child: Text(
                  'Log in',
                  style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold, color: Colors.orange),
                ),
              ),

              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) {
                        return SingUp();
                      }));                },
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor: Colors.orange[400],
                  fixedSize: Size(270, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
              ),
            ],)
          ],
        ),
      ),
    );
  }
}