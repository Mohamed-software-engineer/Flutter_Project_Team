import 'package:flutter/material.dart';

class ErrorTextFormField extends StatelessWidget {
  final String inputLabelText;
  final String inputErrorText;
  final IconData iconType;
  const ErrorTextFormField({super.key, required this.inputLabelText, required this.inputErrorText, required this.iconType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: inputLabelText,
          errorText: inputErrorText,
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: Colors.red,
              )
          ),
          prefixIcon: Icon(iconType),
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:
              BorderSide(
                color: Colors.black,
              )
          ),
      ),
    );
  }
}
