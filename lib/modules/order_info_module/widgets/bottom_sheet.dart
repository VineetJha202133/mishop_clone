import 'package:flutter/material.dart';
import 'package:mishop/utils/appColor.dart';

void showMyBottomSheet(BuildContext context) {
  final mediaQueryWidth = MediaQuery.of(context).size.width;
  final mediaQueryHeight = MediaQuery.of(context).size.height;
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        color: lightGrey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.08),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Feedback',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        fontFamily: 'Roboto',
                        color: darkBlue),
                  ),
                  SizedBox(
                    width: mediaQueryWidth * 0.02,
                  ),
                  Text(
                    '1/2',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        color: greenColor),
                  ),
                ],
              ),
              SizedBox(
                height: mediaQueryHeight * 0.02,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/134006_6-dhara-oil-groundnut 1.png',
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(
                    width: mediaQueryWidth * 0.06,
                  ),
                  Expanded(
                      child: Text(
                    'Dhara Groundnut Refined Cooking Oil 5L',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        color: blackColor),
                  )),
                ],
              ),
              SizedBox(
                height: mediaQueryHeight * 0.02,
              ),
              Text(
                'Rate this product',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    color: darkBlue),
              ),
              SizedBox(
                height: mediaQueryHeight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star_border,
                    color: darkBlue,
                    size: 30,
                  ),
                  Icon(
                    Icons.star_border,
                    color: darkBlue,
                    size: 30,
                  ),
                  Icon(
                    Icons.star_border,
                    color: darkBlue,
                    size: 30,
                  ),
                  Icon(
                    Icons.star_border,
                    color: darkBlue,
                    size: 30,
                  ),
                  Icon(
                    Icons.star_border,
                    color: darkBlue,
                    size: 30,
                  ),
                ],
              ),

              SizedBox(height: mediaQueryHeight*0.02,),

              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: inactiveText)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: inactiveText)),
                    // prefixIcon: Icon(Icons.search),
                    hintText: 'Feedback',
                    alignLabelWithHint: true,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 40,
                    ),
                    ),
              ),

              SizedBox(height: mediaQueryHeight*0.02,),

              ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                  backgroundColor: greenColor,
                                  minimumSize: const Size.fromHeight(50)
                                  ),
                                  // ),
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                    color: whiteColor,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              )),
            ],
          ),
        ),
      );
    },
  );
}
