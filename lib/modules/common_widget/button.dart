import 'package:flutter/material.dart';
import 'package:mishop/utils/appColor.dart';

Widget elevatedButton({required String title, required VoidCallback onPressed}){
  return ElevatedButton(
                    onPressed: onPressed,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: greenColor,
                        shape: const StadiumBorder(),
                        minimumSize: const Size(300, 50)),
                    child: Text(
                      title,
                      style: TextStyle(
                          color: whiteColor,
                          fontFamily: 'Roborto',
                          fontWeight: FontWeight.w500),
                    ));
}