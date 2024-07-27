import 'package:e_commerce/features/auth/presentation/widgets/button_widget.dart';
import 'package:e_commerce/features/auth/presentation/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import '../views//singUp.dart';

class LoginWidget extends StatefulWidget {
  LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController userName = TextEditingController();

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
<<<<<<< HEAD
        scrollDirection: Axis.vertical,
=======
>>>>>>> 389f5c37f610e5db45f7e492f0cc130bf5ab7bd0
        child: Stack(
          children:[
            Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/flutter1.png"),
              fit: BoxFit.cover,
            ),
          ),
<<<<<<< HEAD

=======
        
>>>>>>> 389f5c37f610e5db45f7e492f0cc130bf5ab7bd0
            child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(left: 50,right: 50,top: 180),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormFieldWidget(
                  input: userName,
                  labelTextInput: 'User Name',
                  hintTextInput: 'example@gmail.com',
                  prefixIconType: Icons.email_outlined,
                  obscureTextValue: false,
                  suffixTogel: false,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormFieldWidget(
                  input: password,
                  labelTextInput: 'Password',
                  hintTextInput: '',
                  prefixIconType: Icons.lock_outline,
                  obscureTextValue: true, suffixTogel: true,
                ),
<<<<<<< HEAD

                const SizedBox(height: 60,),

=======
        
                const SizedBox(height: 60,),
        
>>>>>>> 389f5c37f610e5db45f7e492f0cc130bf5ab7bd0
                ButtonWidget(
                  passwordController: password,
                  labelOfButton: 'Log in',
                  choseLapelToButton: true,
                  fullNameController: userName,
                  confirmPasswordController: null,
                  emailController: null,
                ),
<<<<<<< HEAD

                const SizedBox(height: 20,),

=======
        
                const SizedBox(height: 20,),
        
>>>>>>> 389f5c37f610e5db45f7e492f0cc130bf5ab7bd0
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.amberAccent,fontSize: 18),
                    ),),
<<<<<<< HEAD

                const SizedBox(height: 60,),

=======
        
                const SizedBox(height: 60,),
        
>>>>>>> 389f5c37f610e5db45f7e492f0cc130bf5ab7bd0
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?",style: TextStyle(color: Colors.white,fontSize: 18),),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return SingUp();
                          }));
                        },
                        child: const Text(
                          "Sign up",
                          style: TextStyle(color: Colors.amber,fontSize: 20),
                        )),
                  ],
                ),
              ],
            ),
          ),
            ),
          ),
            Positioned(
              top: 20,
              left: 10,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Positioned(
              top: 100,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome\nBack',
                    style: TextStyle(
                      height: 1.1,
                      fontSize: 49,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
          ),
      ),
      );
  }
}
