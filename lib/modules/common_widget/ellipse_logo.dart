import 'package:flutter/material.dart';
import 'package:mishop/modules/common_widget/mishop_logo.dart';
import 'package:mishop/utils/appColor.dart';
import 'package:mishop/utils/assetPath.dart';

Widget logoWithEllipse(){
  return Stack(
            children: [
              Image.asset(greyEllipse),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                top: 0.0,
                child: MishopLogo(assetColor: greenColor))
            ],
          );
}