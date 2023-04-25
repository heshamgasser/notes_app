import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  String hint;
  int maxLines;

  TextFieldWidget ({required this.hint, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.bodyMedium,
      maxLines: maxLines,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.bodySmall,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide:  BorderSide(color: Theme.of(context).primaryColor),
        ),
        enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
