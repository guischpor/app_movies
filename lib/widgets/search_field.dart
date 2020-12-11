import 'package:app_movies/styles/styles.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final Widget prefix;

  final TextInputType textInputType;
  final Function(String) onChanged;

  SearchField({
    this.controller,
    this.hint,
    this.prefix,
    this.textInputType,
    this.onChanged,
  });

  final styles = Styles();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: styles.backgroundInputField,
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        controller: controller,
        keyboardType: textInputType,
        style: TextStyle(
          color: styles.textColorHint,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20),
          hintText: hint,
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: styles.textColorHint,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          prefixIcon: prefix,
        ),
      ),
    );
  }
}
