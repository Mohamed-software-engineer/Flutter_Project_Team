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
      backgroundColor: Colors.pink.shade50,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: <Widget>[
            // Top Right Circle
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                  ),
                ),
              ),
            ),
            // Bottom Left Circle
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(200), // نصف قطر النصف دائرة
                ),
              ),
            ),),


            // Title Text
            Positioned(
              top: 100,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Back',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                child: Container(
              margin: EdgeInsets.all(50),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
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
                    const SizedBox(
                      height: 30,
                    ),
                    ButtonWidget(
                        passwordController: password,
                        labelOfButton: 'Log in',
                        choseLapelToButton: true,
                        fullNameController: userName,
                        confirmPasswordController: null,
                        emailController: null,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const Text("Don't have an account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return SingUp();
                              }));
                            },
                            child: const Text(
                              "Sing up",
                              style: TextStyle(color: Colors.deepPurpleAccent),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            )),
            // Back Button
            Positioned(
              top: 40,
              left: 10,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
