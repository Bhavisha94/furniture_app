import 'package:flutter/material.dart';

class Bording2 extends StatelessWidget {
  const Bording2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bording2.png'),
              fit: BoxFit.fill)),
    );
  }
}
