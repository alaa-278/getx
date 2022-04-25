import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextInputFormField extends StatelessWidget {
  final String hintText;
  final List<TextInputFormatter>? inputFormatter;
  const CustomTextInputFormField(
      {Key? key, required this.hintText, this.inputFormatter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextFormField(
        textInputAction: TextInputAction.go,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
      ),
    );
  }
}
