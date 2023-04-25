import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  String hint;
  int maxLines;
  void Function(String?)? onSaved;

  TextFieldWidget ({required this.hint, this.maxLines = 1, this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (newValue) {
        onSaved;
      },
      validator: (value) {
        if (value?.isEmpty ?? true){
          return 'Field is required';
        }
      },
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
        errorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
