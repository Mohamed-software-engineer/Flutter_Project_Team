import 'package:flutter/material.dart';
import '../../../home/presentation/views/home_screen.dart';
import '../../data/accounts.dart';
import '../../data/createdemails.dart';

class ButtonWidget extends StatelessWidget {
  final bool choseLapelToButton;
  final String userName;
  final String password;
  final String confirmPassword;
  final String labelOfButton;

  ButtonWidget(
      {super.key,
      required this.password,
      required this.confirmPassword,
      required this.labelOfButton,
      required this.choseLapelToButton,
      required this.userName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      width: 200,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(30)),
      child: MaterialButton(
        onPressed: () {
          if (choseLapelToButton) {
            if (password == confirmPassword && password.isNotEmpty) {
              accounts.add(Createdemails(userName, password));
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return HomeScreen();
              }));
            }
          } else {
            String enterdUserName = userName;
            String enterdPassword = password;
            for (Createdemails account in accounts) {
              if (account.userName == enterdUserName &&
                  account.Password == enterdPassword) {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return HomeScreen();
                }));
              }
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
      ),
    );
  }
}
