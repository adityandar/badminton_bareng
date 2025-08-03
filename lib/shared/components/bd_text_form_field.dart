import 'package:flutter/material.dart';

class BdTextFormField extends TextFormField {
  BdTextFormField({
    super.key,
    super.controller,
    super.onFieldSubmitted,
    String? hintText,
    String? labelText,
  }) : super(
         decoration: InputDecoration(
           hintText: hintText,
           labelText: labelText,
           filled: true,
           fillColor: Colors.white,
           border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(16),
             borderSide: BorderSide.none,
           ),
         ),
         style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
       );
}
