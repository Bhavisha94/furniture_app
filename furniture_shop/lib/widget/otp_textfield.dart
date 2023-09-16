import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/style.dart';

class OtpTextField extends StatelessWidget {
  final TextEditingController? controller;
  const OtpTextField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 55,
      child: TextField(
        keyboardType: TextInputType.number,
        controller: controller,
        textAlign: TextAlign.center,
        obscureText: true,
        style: textStyle.copyWith(fontSize: 35, color: ColorUtils.shade979797),
        onChanged: (p0) {
          if (p0.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
            fillColor: ColorUtils.gray04,
            filled: true,
            hintText: '',
            contentPadding: EdgeInsets.zero,
            hintStyle:
                textStyle.copyWith(fontSize: 14, color: ColorUtils.shade979797),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
