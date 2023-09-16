import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/style.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .055,
      decoration: BoxDecoration(
          border: Border.all(color: ColorUtils.borderShade),
          borderRadius: BorderRadius.circular(25)),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search…',
            hintStyle:
                textStyle.copyWith(fontSize: 14, color: ColorUtils.shadeDDDDDD),
            prefixIcon: SizedBox(
                width: 14,
                height: 14,
                child: Center(
                  child: SvgPicture.asset('assets/images/search.svg'),
                )),
            isDense: true,
            contentPadding: EdgeInsets.zero,
            fillColor: ColorUtils.white,
            filled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}
