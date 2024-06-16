import 'package:flutter/material.dart';
import 'package:mishop/utils/appColor.dart';

Widget listTile(IconData icon, String title, {String? trailingText}) {
  return ListTile(
    leading: Icon(
      icon,
      color: greenColor,
    ),
    title: Text(title),
    trailing: trailingText != null ? Text(trailingText, style: TextStyle(fontFamily: 'Roboto',color: darkBlue, fontWeight: FontWeight.w400, fontSize: 16 ),) : null,
  );
}
