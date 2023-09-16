import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/cubit/details_item_color/cubit/details_item_color_cubit.dart';
import 'package:furniture_shop/screens/my_cart.dart';
import 'package:furniture_shop/widget/appbar.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';
import 'package:furniture_shop/widget/button.dart';
import 'package:furniture_shop/widget/item_color.dart';

class DetailsScreen extends StatefulWidget {
  final String tag;
  final String image;
  final String name;
  final String price;
  const DetailsScreen(
      {super.key,
      required this.tag,
      required this.image,
      required this.name,
      required this.price});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int idx = 0;

  @override
  void initState() {
    super.initState();
    //show();
  }

  show() {
    Future.delayed(const Duration(seconds: 1), () {
      showSheet();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
          title: 'Detail',
          action: [
            SvgPicture.asset('assets/images/share.svg'),
            SizeUtils.horizontalSpacing(
                width: MediaQuery.of(context).size.width * .02),
          ],
          context: context),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              child: Hero(
                tag: widget.tag,
                child: Container(
                  width: 324,
                  height: 360,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/${widget.image}.png'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            BlocConsumer<DetailsItemColorCubit, DetailsItemColorState>(
              listener: (context, state) {
                if (state is DetailsItemColorIndex) {
                  idx = state.index;
                  log(idx.toString());
                }
              },
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ItemColorWidget(
                      index: 0,
                      selectedIndex: idx,
                      color: ColorUtils.dotColor,
                      onCallBack: () =>
                          context.read<DetailsItemColorCubit>().change(0),
                    ),
                    SizeUtils.horizontalSpacing(
                        width: MediaQuery.of(context).size.width * .01),
                    ItemColorWidget(
                      index: 1,
                      selectedIndex: idx,
                      color: ColorUtils.yellow,
                      onCallBack: () =>
                          context.read<DetailsItemColorCubit>().change(1),
                    ),
                    SizeUtils.horizontalSpacing(
                        width: MediaQuery.of(context).size.width * .01),
                    ItemColorWidget(
                      index: 2,
                      selectedIndex: idx,
                      color: ColorUtils.shadeE3E3E3,
                      onCallBack: () =>
                          context.read<DetailsItemColorCubit>().change(2),
                    ),
                    SizeUtils.horizontalSpacing(
                        width: MediaQuery.of(context).size.width * .01),
                    ItemColorWidget(
                      index: 3,
                      selectedIndex: idx,
                      color: ColorUtils.brown,
                      onCallBack: () =>
                          context.read<DetailsItemColorCubit>().change(3),
                    )
                  ],
                );
              },
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .365,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: ColorUtils.white),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.name,
                              style: textStyle.copyWith(
                                  fontSize: 22, color: ColorUtils.shadeGray4),
                            ),
                            Text(
                              '\$${widget.price}',
                              style: textStyle.copyWith(
                                  color: ColorUtils.dotColor, fontSize: 25),
                            ),
                            RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemSize: 20,
                              itemCount: 5,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: ColorUtils.yellow,
                              ),
                              onRatingUpdate: (rating) {},
                            )
                          ],
                        ),
                        Container(
                          width: 43,
                          height: 43,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: ColorUtils.shadeF6F6F6),
                          child: Center(
                            child: SvgPicture.asset('assets/images/heart.svg'),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .025),
                  Text(
                    'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
                    style: textStyle.copyWith(
                        fontSize: 12, color: ColorUtils.shadeADADAD),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .025),
                  Button(
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * .06,
                    text: 'Add To Cart'.toUpperCase(),
                    color: ColorUtils.dotColor,
                    fontSize: 12,
                    onCallBack: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const MyCart())),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  showSheet() {
    showModalBottomSheet(
      context: context,
      elevation: 0,
      builder: (context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .3,
          color: Colors.black,
        );
      },
    );
  }
}
