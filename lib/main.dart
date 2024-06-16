import 'package:flutter/material.dart';
import 'package:mishop/modules/base_module/screen/bottom_navigation_bar.dart';
import 'package:mishop/modules/cart_module/screen/my_cart_view.dart';
import 'package:mishop/modules/cart_module/screen/my_shopping_list_view.dart';
import 'package:mishop/modules/cart_module/screen/review_view.dart';
import 'package:mishop/modules/category_module/categorySubModules/product_view.dart';
import 'package:mishop/modules/category_module/screen/category_search_view.dart';
import 'package:mishop/modules/category_module/categorySubModules/category_view.dart';
import 'package:mishop/modules/cart_module/screen/checkout_view.dart';
import 'package:mishop/modules/order_info_module/screen/order_details.dart';
import 'package:mishop/modules/profile_module/screen/my_account.dart';
import 'package:mishop/modules/splash_module/screen/language.dart';
import 'package:mishop/modules/splash_module/screen/splash_Screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of MyAccountr application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

