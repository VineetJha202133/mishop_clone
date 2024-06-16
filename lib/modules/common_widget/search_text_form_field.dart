import 'package:flutter/material.dart';
import 'package:mishop/utils/appColor.dart';

Widget searchTextFormField({double verticalPadding = 14.0}){
  return TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(42),
                          borderSide: BorderSide(color: whiteColor)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(42),
                          borderSide: BorderSide(color: whiteColor)),
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      contentPadding: EdgeInsets.symmetric(vertical: verticalPadding,),
                      fillColor: whiteColor,
                      filled: true
                      ),
                );
}