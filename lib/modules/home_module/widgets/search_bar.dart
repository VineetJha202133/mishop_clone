import 'package:flutter/material.dart';
import 'package:mishop/utils/appColor.dart';

Widget searchBar(){
  return TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(42),
                          borderSide: BorderSide(color: lightestGrey)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(42),
                          borderSide: BorderSide(color: lightestGrey)),
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      contentPadding: EdgeInsets.symmetric(vertical: 14,),
                      fillColor: whiteColor,
                      filled: true
                      ),
                );         
}