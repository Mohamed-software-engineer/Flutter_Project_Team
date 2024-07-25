import 'package:e_commerce/features/auth/presentation/widgets/button_widget.dart';
import 'package:e_commerce/features/auth/presentation/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class SingupWidget extends StatelessWidget {
  const SingupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController fullName = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirmPassword = TextEditingController();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background Color
          Container(
            color: Colors.pink.shade50,
          ),
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
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(200),
                ),
              ),
            ),
          ),
          // Title Text
          Positioned(
            top: 100,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'New Account',
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
                        input: fullName,
                        labelTextInput: 'Name',
                        hintTextInput: 'Name',
                        prefixIconType: Icons.person_outline),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormFieldWidget(
                        input: email,
                        labelTextInput: 'email',
                        hintTextInput: 'email',
                        prefixIconType: Icons.email_outlined),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormFieldWidget(
                        input: password,
                        labelTextInput: 'Password',
                        hintTextInput: 'Password',
                        prefixIconType: Icons.lock_outline),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormFieldWidget(
                        input: confirmPassword,
                        labelTextInput: 'Confirmed Password',
                        hintTextInput: 'Confirmed Password',
                        prefixIconType: Icons.lock_outline),
                    const SizedBox(
                      height: 50,
                    ),
                    ButtonWidget(
                        password: password.text,
                        confirmPassword: confirmPassword.text,
                        labelOfButton: 'Sign Up',
                        choseLapelToButton: true,
                        userName: fullName.text)
                  ],
                )),
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
