import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/cubit/payment/cubit/payment_cubit.dart';
import 'package:furniture_shop/widget/appbar.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/list.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';
import 'package:furniture_shop/widget/button.dart';

class YourCart extends StatefulWidget {
  const YourCart({super.key});

  @override
  State<YourCart> createState() => _YourCartState();
}

class _YourCartState extends State<YourCart> {
  int idx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      appBar: AppBarWidget.appBar(title: 'Your Chart', context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Chart',
                style: textStyle.copyWith(
                    fontSize: 16, color: ColorUtils.shadeGray4),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
              Row(
                children: [
                  Container(
                    width: 105,
                    height: 95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/cart1.png'),
                            fit: BoxFit.fill)),
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .025),
                  Container(
                    width: 105,
                    height: 95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/cart2.png'),
                            fit: BoxFit.fill)),
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .025),
                  Container(
                    width: 105,
                    height: 95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/cart3.png'),
                            fit: BoxFit.fill)),
                  )
                ],
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Address',
                    style: textStyle.copyWith(
                        fontSize: 16, color: ColorUtils.shadeGray4),
                  ),
                  Text(
                    'Edit Address',
                    style: textStyle.copyWith(color: ColorUtils.shadeBB),
                  )
                ],
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .01),
              Text(
                'Jimmy Sullivan, (+1) 954-868-1190 Long Beach, California (Jimmy’s Home), 90712',
                style: textStyle.copyWith(
                    color: ColorUtils.shadeADADAD, fontSize: 12),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              Text(
                'Shipping Options',
                style: textStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: ColorUtils.shadeGray4),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shipping Options',
                    style: textStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    'Choose Service',
                    style: textStyle.copyWith(color: ColorUtils.shadeBB),
                  )
                ],
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              Row(
                children: [
                  Container(
                    width: 66,
                    height: 52,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: ColorUtils.shade979797.withOpacity(.5)),
                        borderRadius: BorderRadius.circular(15),
                        color: ColorUtils.shadeF9F9F9),
                    child: Center(
                      child: SvgPicture.asset('assets/images/shipping.svg'),
                    ),
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .015),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '\$131.18',
                        style:
                            textStyle.copyWith(color: ColorUtils.shadeFF7643),
                      ),
                      Text(
                        'Will be received on July 12, 2020',
                        style:
                            textStyle.copyWith(color: ColorUtils.shade757575),
                      )
                    ],
                  )
                ],
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Payment Methods',
                    style: textStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    'View All',
                    style: textStyle.copyWith(color: ColorUtils.shadeBB),
                  )
                ],
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
              BlocConsumer<PaymentCubit, PaymentState>(
                listener: (context, state) {
                  if (state is PaymentMethod) {
                    idx = state.index;
                  }
                },
                builder: (context, state) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * .063,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: paymentMethods.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: InkWell(
                            onTap: () =>
                                context.read<PaymentCubit>().pay(index),
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: ColorUtils.shadeF9F9F9,
                                  border: Border.all(
                                      color: idx == index
                                          ? ColorUtils.yellow
                                          : Colors.transparent),
                                  borderRadius: BorderRadius.circular(15)),
                              child: SvgPicture.asset(
                                  'assets/images/${paymentMethods[index]}.svg'),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .15),
              Row(
                children: [
                  Text(
                    'Add voucher code',
                    style: textStyle.copyWith(color: ColorUtils.shade757575),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                    color: ColorUtils.shade7C7C7C,
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total:',
                        style:
                            textStyle.copyWith(color: ColorUtils.shade757575),
                      ),
                      Text(
                        '\$337.15',
                        style: textStyle.copyWith(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
              Button(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .06,
                  text: 'Pay Now'.toUpperCase(),
                  color: ColorUtils.yellow,
                  fontSize: 12)
            ],
          ),
        ),
      ),
    );
  }
}
