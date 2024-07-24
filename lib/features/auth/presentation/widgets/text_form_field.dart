import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormFieldWidget extends StatefulWidget {
  TextEditingController input = TextEditingController();
  String labelTextInput;
  String hintTextInput;
  final IconData? prefixIconType;
  TextFormFieldWidget(
      {super.key,
      required this.input,
      required this.labelTextInput,
      required this.hintTextInput,
      required this.prefixIconType,
      });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    bool obscureTextValue = false;
    return TextFormField(
      controller: widget.input,
      obscureText: obscureTextValue,
      decoration: InputDecoration(
          labelText: widget.labelTextInput,
          hintText: widget.hintTextInput,
          prefix: Icon(widget.prefixIconType),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: Colors.blue,
              ))),
    );
  }
}
