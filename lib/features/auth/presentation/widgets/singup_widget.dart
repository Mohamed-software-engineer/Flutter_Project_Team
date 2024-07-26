import 'package:e_commerce/features/auth/presentation/views/login.dart';
import 'package:e_commerce/features/auth/presentation/widgets/button_widget.dart';
import 'package:e_commerce/features/auth/presentation/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../home/presentation/views/home_screen.dart';
import '../../data/accounts.dart';
import '../../data/createdemails.dart';

class SingupWidget extends StatefulWidget {
  const SingupWidget({super.key});

  @override
  State<SingupWidget> createState() => _SingupWidgetState();
}

class _SingupWidgetState extends State<SingupWidget> {

  TextEditingController fullName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
               Container(
                decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage("assets/flutter1.png"),
                 fit: BoxFit.cover,

                ),
              ),
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50,right: 50,top: 180),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormFieldWidget(
                          input: fullName,
                          labelTextInput: 'Name',
                          hintTextInput: 'Name',
                          prefixIconType: Icons.person_outline, obscureTextValue: false, suffixTogel: false,),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormFieldWidget(
                          input: email,
                          labelTextInput: 'email',
                          hintTextInput: 'email',
                          prefixIconType: Icons.email_outlined, suffixTogel: false, obscureTextValue: false,),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormFieldWidget(
                          input: password,
                          labelTextInput: 'Password',
                          hintTextInput: 'Password',
                          prefixIconType: Icons.lock_outline, obscureTextValue: true, suffixTogel: true,),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormFieldWidget(
                          input: confirmPassword,
                          labelTextInput: 'Confirmed Password',
                          hintTextInput: 'Confirmed Password',
                          prefixIconType: Icons.lock_outline, obscureTextValue: true, suffixTogel: true ,),
                      const SizedBox(
                        height: 60,
                      ),
                      ButtonWidget(
                          passwordController: password,
                          confirmPasswordController: confirmPassword,
                          labelOfButton: 'Sign Up',
                          choseLapelToButton: true,
                          fullNameController: fullName, emailController: email,),

                      const SizedBox(height: 40,),

                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account?",style: TextStyle(color: Colors.white,fontSize: 18),),
                          TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                      return Login();
                                    }));
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(color: Colors.amber,fontSize: 20),
                              )),
                        ],
                      ),
                    ],
                  ),
                )),
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
                  'Create\nnew acount',
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
    );
  }
}
/*Container(
                  margin: EdgeInsets.all(50),
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormFieldWidget(input: fullName, labelTextInput: 'Name', hintTextInput: 'Name', prefixIconType: Icons.person_outline),
                          const SizedBox(height: 30,),
                          TextFormFieldWidget(input: email, labelTextInput: 'email', hintTextInput: 'email', prefixIconType: Icons.email_outlined),
                          const SizedBox(height: 30,),
                          TextFormFieldWidget(input: password, labelTextInput: 'Password', hintTextInput: 'Password', prefixIconType: Icons.lock_outline),
                          const SizedBox(height: 30,),
                          TextFormFieldWidget(input: confirmPassword, labelTextInput: 'Confirmed Password', hintTextInput: 'Confirmed Password', prefixIconType: Icons.lock_outline),
                          const SizedBox(height: 50,),
                          ButtonWidget(password: password.text, confirmPassword: confirmPassword.text, labelOfButton: 'Sign Up', choseLapelToButton: true, userName: fullName.text)
                        ],
                      )
                  ),
                )*/
