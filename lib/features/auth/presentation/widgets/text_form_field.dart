import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormFieldWidget extends StatefulWidget {
  TextEditingController input = TextEditingController();
  String labelTextInput;
  String hintTextInput;
  final IconData? prefixIconType;
  bool? obscureTextValue;
  bool suffixTogel;
  TextFormFieldWidget({
    super.key,
    required this.input,
    required this.labelTextInput,
    required this.hintTextInput,
    required this.prefixIconType, 
    required this.obscureTextValue,
    required this.suffixTogel,
  });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.input,
      obscureText: widget.obscureTextValue!,
      decoration: InputDecoration(
          labelText: widget.labelTextInput,
          hintText: widget.hintTextInput,
          prefix: Icon(widget.prefixIconType),
          suffixIcon: widget.suffixTogel
              ? IconButton(
            icon: Icon(
              widget.obscureTextValue! ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: () {
              setState(() {
                widget.obscureTextValue = !widget.obscureTextValue!;
              });
            },
          )
              : null,
          border: OutlineInputBorder(

          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
          color: Colors.blue,
    )
          )
      ),
    // onChanged callback to update state
    onChanged: (value) {
    setState(() {});
    },
    );
    }
  }
