import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:mishop/utils/appColor.dart';

class Utils {
  customFlushbar(BuildContext context, {required String message}) {
    return Flushbar(
      message: message,
      duration: Duration(seconds: 5),
      messageText: Text(message, style: TextStyle(color: whiteColor),),
      backgroundColor: darkBlue,
    ).show(context);
  }
}
