import 'package:flutter/material.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/style.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final bool obsecure;
  final TextInputType? textInputType;
  const TextFieldWidget(
      {super.key,
      this.hintText,
      this.controller,
      required this.obsecure,
      this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsecure,
      controller: controller,
      style: textStyle.copyWith(height: 0),
      keyboardType: textInputType,
      decoration: InputDecoration(
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
        fillColor: ColorUtils.gray04,
        hintText: hintText,
        hintStyle: textStyle.copyWith(fontSize: 14, color: ColorUtils.gray03),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
