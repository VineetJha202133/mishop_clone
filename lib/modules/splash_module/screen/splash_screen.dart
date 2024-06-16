import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mishop/modules/base_module/screen/bottom_navigation_bar.dart';
import 'package:mishop/modules/common_widget/mishop_logo.dart';
import 'package:mishop/modules/splash_module/screen/language.dart';
import 'package:mishop/services/shared_preferences_services.dart';
import 'package:mishop/utils/appColor.dart';
import 'package:mishop/utils/enum/shared_prefs_keys_enum.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoggedInData = false;

  isLoggedIn() {
    Timer(const Duration(seconds: 4), () async {
      isLoggedInData = await SharedPreferencesServices.getBoolData(
              key: SharedPreferencesKeyEnum.isLoggedIn.value) ??
          false;
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  isLoggedInData ? const CustomBottomNavigationBar() : const Language()));
    });
  }

  @override
  void initState() {
    isLoggedIn();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      color: greenColor,
      child: MishopLogo(assetColor: whiteColor),
    ));
  }
}
