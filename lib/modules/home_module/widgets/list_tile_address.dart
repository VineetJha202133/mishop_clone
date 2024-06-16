import 'package:flutter/material.dart';
import 'package:mishop/utils/appColor.dart';
import 'package:mishop/utils/assetPath.dart';

Widget listTileAdress(){
  return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset(addressIcon),
                  title: Text(
                    'Deliver at',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: inactiveText,
                        fontFamily: 'Roboto'),
                  ),
                  subtitle: Text(
                    'F-10, New Housing Colony, Noida',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: activeText,
                        fontFamily: 'Roboto'),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/Ellipse_Red.png'),
                      const SizedBox(
                        height: 2,
                      ),
                      Image.asset('assets/images/Bell_Icon.png')
                    ],
                  ),
                );
}