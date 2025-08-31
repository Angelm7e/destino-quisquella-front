import 'package:flutter/material.dart';

class DQTextField extends StatefulWidget {
  const DQTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.labelText,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText = false,
      this.keyboardType = TextInputType.text});

  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;

  @override
  State<DQTextField> createState() => _DQTextFieldState();
}

class _DQTextFieldState extends State<DQTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscureText,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        labelText: widget.labelText,
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
      ),
    );
  }
}
