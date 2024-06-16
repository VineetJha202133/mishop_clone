import 'package:flutter/material.dart';
import 'package:mishop/utils/appColor.dart';
import 'package:mishop/utils/assetPath.dart';


class MishopLogo extends StatelessWidget {
  final Color assetColor;
  const MishopLogo({required this.assetColor ,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(logoImage),
      RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800, fontFamily: 'Roboto'),
          children: [
            TextSpan(text: 'mi', style: TextStyle(color: yellowColor)),
            TextSpan(text: 'shop', style: TextStyle(color: assetColor)),
          ],
        ),
      ),
    ],
  );
  }
}
