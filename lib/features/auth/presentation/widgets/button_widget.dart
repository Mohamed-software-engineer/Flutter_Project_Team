import 'package:flutter/material.dart';
import '../../../home/presentation/views/home_screen.dart';
import '../../data/accounts.dart';
import '../../data/createdemails.dart';

class ButtonWidget extends StatelessWidget {
  final bool choseLapelToButton;
  final TextEditingController fullNameController;
  final TextEditingController passwordController;
  final TextEditingController? confirmPasswordController;
  final TextEditingController? emailController;
  final String labelOfButton;

   ButtonWidget({
    super.key,
    required this.choseLapelToButton,
    required this.fullNameController,
    required this.passwordController,
     required this.confirmPasswordController,
     required this.emailController,
    required this.labelOfButton
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      width: 200,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(30)),
      child: MaterialButton(
        onPressed: () {
          String enteredPassword = passwordController.text.trim();
          String? enteredConfirmedPassword = confirmPasswordController?.text.trim();
          String enteredUserName = fullNameController.text.trim();
          String? enteredEmail = emailController?.text.trim();

          if (choseLapelToButton) {
          // Login functionality
          for (Createdemails account in accounts) {
          if (account.userName == enteredUserName &&
          account.Password == enteredPassword) {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
          return HomeScreen();
          }));
          return;
          }
          }
          } else {
          // Sign up functionality

          if (
          enteredPassword == enteredConfirmedPassword &&
          enteredPassword.isNotEmpty &&
          enteredUserName.isNotEmpty &&
          enteredEmail!.isNotEmpty
          ) {
            print("we are now in sign up button");
          accounts.add(Createdemails(enteredUserName, enteredPassword));
          Navigator.push(context, MaterialPageRoute(builder: (_) {
          return HomeScreen();
          }
          )
          );
    }
    }
    },
    child: Text(
        labelOfButton,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    )
    );
  }
}
