import 'package:flutter/material.dart';

Widget defaultButton({
   double? height,
  required double width,
  required Color background,
  bool isUpperCase = true,
  double radius = 0.0,
  required Function() function,
  required String text,
}) =>
    Container(
      width: width,
      height: height,
      child: MaterialButton(
        // enabled: true,
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  bool isPassword = false,
  required FormFieldValidator validate,
   String? label,
  IconData? prefix,
  IconData? suffix,
  Function()? suffixPressed,
  TextAlign? textAlign,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      validator: validate,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: OutlineInputBorder(),
      ),
    );
