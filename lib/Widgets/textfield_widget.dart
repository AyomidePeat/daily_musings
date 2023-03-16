import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hint;
  final double fontSize;
  final TextEditingController controller;
  final bool isBold;
  final onChanged;

  const TextFieldWidget({
    Key? key,
    required this.hint,
    required this.fontSize,
    required this.controller,
    required this.isBold, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      textCapitalization: TextCapitalization.sentences,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
      autocorrect: true,
      cursorWidth: 3,
      enableSuggestions: true,
      controller: controller,
      cursorColor: Colors.green,
      cursorHeight: 23,
      maxLines: null,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          focusColor: Colors.transparent,
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: fontSize,
          )),
    );
  }
}
