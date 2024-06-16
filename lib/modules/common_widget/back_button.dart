import 'package:flutter/material.dart';
import 'package:mishop/utils/appColor.dart';

Widget backButton({VoidCallback? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: CircleAvatar(
      radius: 20,
      backgroundColor: darkBlue,
      child: Icon(
        Icons.arrow_back_outlined,
        color: whiteColor,
      ),
    ),
  );
}
