// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/screens/your_cart.dart';
import 'package:furniture_shop/widget/appbar.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/list.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';
import 'package:furniture_shop/widget/button.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(title: 'My Cart', context: context, action: [
        SvgPicture.asset('assets/images/delete.svg'),
        SizeUtils.horizontalSpacing(
            width: MediaQuery.of(context).size.width * .02),
      ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
            child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: cartList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: ColorUtils.white),
                        child: Row(
                          children: [
                            Container(
                              width: 105,
                              height: 122,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/${cartList[index].image}.png'),
                                      fit: BoxFit.fill)),
                            ),
                            SizeUtils.horizontalSpacing(
                                width:
                                    MediaQuery.of(context).size.width * .015),
                            Expanded(
                              child: SizedBox(
                                height: 98,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              cartList[index].name,
                                              style: textStyle.copyWith(
                                                  fontSize: 14,
                                                  color: ColorUtils.shadeGray4),
                                            ),
                                            Text(
                                              '\$${cartList[index].price}',
                                              style: textStyle.copyWith(
                                                  color: ColorUtils.dotColor,
                                                  fontSize: 20),
                                            )
                                          ],
                                        ),
                                        SvgPicture.asset(
                                          'assets/images/delete.svg',
                                          color: ColorUtils.shadeDDDDDD,
                                        )
                                      ],
                                    ),
                                    SizeUtils.verticalSpacing(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .005),
                                    Container(
                                      width: 102,
                                      height: 32,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          border: Border.all(
                                              color: ColorUtils.borderShade)),
                                      child: Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {});
                                            },
                                            child: SizedBox(
                                              width: 32,
                                              height: 32,
                                              child: Center(
                                                child: Icon(
                                                  Icons.remove,
                                                  size: 20,
                                                  color: ColorUtils.dotColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                              child: Container(
                                            color: ColorUtils.borderShade,
                                            child: Center(
                                              child: Text(
                                                cartList[index].qty.toString(),
                                                style: textStyle.copyWith(
                                                    color:
                                                        ColorUtils.shadeGray4),
                                              ),
                                            ),
                                          )),
                                          SizedBox(
                                            width: 32,
                                            height: 32,
                                            child: Center(
                                              child: Icon(
                                                Icons.add,
                                                size: 20,
                                                color: ColorUtils.dotColor,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: ColorUtils.white,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Summary',
                    style: textStyle.copyWith(
                        fontSize: 16, color: ColorUtils.shadeGray4),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Service',
                        style: textStyle.copyWith(color: ColorUtils.shadeBB),
                      ),
                      Text(
                        '\$45',
                        style: textStyle.copyWith(
                            color: ColorUtils.shadeGray4, fontSize: 20),
                      ),
                    ],
                  ),
                  Divider(
                    color: ColorUtils.shadeEDEDED,
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'TOTAL',
                        style: textStyle.copyWith(color: ColorUtils.shadeBB),
                      ),
                      Text(
                        '\$915',
                        style: textStyle.copyWith(fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            Button(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .06,
              text: 'Pay Now'.toUpperCase(),
              color: ColorUtils.yellow,
              fontSize: 12,
              onCallBack: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const YourCart())),
            )
          ],
        )),
      ),
    );
  }
}
