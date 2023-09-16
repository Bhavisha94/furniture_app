import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/cubit/cubit/bottom_item_cubit.dart';
import 'package:furniture_shop/cubit/details_item_color/cubit/details_item_color_cubit.dart';
import 'package:furniture_shop/cubit/payment/cubit/payment_cubit.dart';
import 'package:furniture_shop/cubit/timer/cubit/timer_cubit.dart';
import 'package:furniture_shop/screens/dashboard.dart';
import 'package:furniture_shop/screens/demo.dart';
import 'package:furniture_shop/screens/my_account.dart';
import 'package:furniture_shop/screens/setting.dart';
import 'package:furniture_shop/screens/splashscreen.dart';
import 'package:furniture_shop/screens/support.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomItemCubit>(create: (_) => BottomItemCubit()),
        BlocProvider<DetailsItemColorCubit>(
            create: (_) => DetailsItemColorCubit()),
        BlocProvider<PaymentCubit>(create: (_) => PaymentCubit()),
        BlocProvider<TimerCubit>(create: (_) => TimerCubit())
      ],
      child: MaterialApp(
          title: 'Homely',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const Splashscreen()),
    );
  }
}
