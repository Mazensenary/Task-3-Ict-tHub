import 'package:flutter/material.dart';
class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? hintText;
  final String? label;
  final String? Function(String?)? validator;
  final Widget?suffixicon;
  final Widget?Prefixicon;
  const CustomTextFormField({super.key,this.hintText,this.label,this.controller,this.validator,this.Prefixicon,this.suffixicon,
  this.keyboardType,required
    this.obscureText});

  @override
  Widget build(BuildContext context) {
    return
      TextFormField(
        style:TextStyle(
          color:Colors.white
        ),
        controller:controller ,
        validator: validator,
        keyboardType:keyboardType,
        obscureText:obscureText ?? false ,
        decoration:InputDecoration(
            border:OutlineInputBorder(
              borderRadius:BorderRadius.circular(20),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2), // Border color before clicked
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.amber, width: 2), // Border color when clicked
              borderRadius: BorderRadius.circular(20),
            ),

            hintText: hintText??"type..",
            label:Text(label??'..'),
            prefixIcon:Prefixicon,
            prefixIconColor: Colors.amber,
            suffixIcon:suffixicon,
            suffixIconColor:Colors.amber,
            labelStyle:TextStyle(
              color:Colors.white,
            ),
            hintStyle:TextStyle(
              color:Colors.white,
              fontSize:20,
            )
        ),

      );
  }
}
