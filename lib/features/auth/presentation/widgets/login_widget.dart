import 'package:e_commerce/features/auth/data/accounts.dart';
import 'package:e_commerce/features/auth/data/createdemails.dart';
import 'package:e_commerce/features/auth/presentation/screens/home_page.dart';
import 'package:e_commerce/features/auth/presentation/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import '../screens/singUp.dart';

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
      body: ListView(children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 900,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/ecommerce.png"),
                    fit: BoxFit.fill),
              ),
              child: const Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        "Log in...",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 700,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
                color: Colors.white70,
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    TextFormFieldWidget(
                      input: userName,
                      labelTextInput: 'User Name',
                      hintTextInput: 'example@gmail.com',
                      prefixIconType: Icons.email_outlined,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormFieldWidget(
                      input: password,
                      labelTextInput: 'Password',
                      hintTextInput: '',
                      prefixIconType: Icons.lock_outline,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(30)),
                      child: MaterialButton(
                        onPressed: () {
                          String enterdUserName = userName.text;
                          String enterdPassword = password.text;
                          for (Createdemails account in accounts) {
                            if (account.userName == enterdUserName &&
                                account.Password == enterdPassword) {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return const HomePage();
                              }));
                            } else {}
                          }
                        },
                        child: const Text(
                          "Log in",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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
            )
          ],
        ),
      ]),
    );
  }
}
