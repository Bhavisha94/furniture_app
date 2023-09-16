import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/screens/details.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/list.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';

class RecommendedList extends StatelessWidget {
  const RecommendedList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: .79),
      itemCount: recommList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => DetailsScreen(
                        tag: 'recommended$index',
                        image: recommList[index].image,
                        name: recommList[index].name,
                        price: recommList[index].desc,
                      ))),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Hero(
                    tag: 'recommended$index',
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/${recommList[index].image}.png'),
                              fit: BoxFit.fill)),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 34,
                            height: 34,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorUtils.white),
                            padding: const EdgeInsets.all(8),
                            child: Center(
                              child:
                                  SvgPicture.asset('assets/images/heart.svg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            recommList[index].name,
                            style: textStyle.copyWith(
                                color: ColorUtils.shadeGray4),
                          ),
                          Row(
                            children: [
                              Text(
                                '\$${recommList[index].desc}',
                                style: textStyle.copyWith(
                                    color: ColorUtils.dotColor),
                              ),
                              const Spacer(),
                              SvgPicture.asset('assets/images/favorite.svg'),
                              SizeUtils.horizontalSpacing(
                                  width:
                                      MediaQuery.of(context).size.width * .01),
                              Text(
                                recommList[index].rate,
                                style: textStyle.copyWith(
                                    color: ColorUtils.shadeBB, fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
