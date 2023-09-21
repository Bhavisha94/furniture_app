import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';
import 'package:furniture_shop/widget/appbar.dart';
import 'package:furniture_shop/widget/button.dart';
import 'package:furniture_shop/widget/rate_widget.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({super.key});

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget.appBar(title: 'Feedback', context: context, action: [
        SvgPicture.asset('assets/images/share.svg'),
        SizeUtils.horizontalSpacing(
            width: MediaQuery.of(context).size.width * .03)
      ]),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/sofa.png',
                  width: 324,
                  height: 360,
                  fit: BoxFit.fill,
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 5.0),
                  unratedColor: ColorUtils.white,
                  itemBuilder: (context, index) {
                    return RateWidget(color: ColorUtils.yellow);
                  },
                  onRatingUpdate: (rating) {},
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: TextField(
                    maxLines: 5,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        // label: Text(
                        //   'Comment',
                        //   style: textStyle.copyWith(
                        //       fontFamily: 'Montserrat', fontSize: 13),
                        // ),
                        hintText: 'Add your comment',
                        hintStyle: textStyle.copyWith(
                            fontFamily: 'Montserrat', fontSize: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        )),
                  ),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .055),
                Button(
                  width: MediaQuery.of(context).size.width * .85,
                  height: MediaQuery.of(context).size.height * .06,
                  text: 'Submit'.toUpperCase(),
                  color: ColorUtils.yellow,
                  fontSize: 14,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
