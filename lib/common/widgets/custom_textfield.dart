import 'package:ecommerce_app_backend/extensions/buildcontext/loc.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLines;
  final bool isPassword;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.maxLines = 1,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
          hintText: hintText,
          border:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
              borderSide: BorderSide(
            color: Colors.black38,
          )),
          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
              borderSide: BorderSide(
            color: Colors.black38,
          ))),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return context.loc.enter + ' $hintText';
        }
        return null;
      },
      maxLines: maxLines,
    );
  }
}
