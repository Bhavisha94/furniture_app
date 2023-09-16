import 'package:flutter/material.dart';

class ItemColorWidget extends StatelessWidget {
  int index;
  int selectedIndex;
  Color color;
  VoidCallback? onCallBack;
  ItemColorWidget(
      {super.key,
      required this.index,
      required this.selectedIndex,
      required this.color,
      this.onCallBack});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCallBack,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: index == selectedIndex ? color : Colors.transparent,
                width: 2)),
        child: Center(
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
        ),
      ),
    );
  }
}
