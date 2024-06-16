import 'package:flutter/material.dart';
import 'package:mishop/modules/common_widget/back_button.dart';
import 'package:mishop/modules/category_module/widgets/category_build_view.dart';
import 'package:mishop/modules/common_widget/search_text_form_field.dart';
import 'package:mishop/utils/appColor.dart';
import 'package:mishop/utils/assetPath.dart';

class CategoryView extends StatefulWidget {
  final String categoryName;
  const CategoryView({required this.categoryName, super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  List<Map<String, dynamic>> products = [
    {
      'image': 'assets/images/134006_6-dhara-oil-groundnut 1.png',
      'type': 'Grocery',
      'name': 'Dhara Groundnut Refined Cooking Oil 5L',
      'price': 120,
      'rating': '4.2',
      'noOfRatings': 230
    },
    {
      'image': 'assets/images/40015868-9_2-mountain-dew-soft-drink 1.png',
      'type': 'Grocery',
      'name': 'Mountain Dew 1L Soft Drink Bottle',
      'price': 60,
      'rating': '4.5',
      'noOfRatings': 160
    },
    {
      'image': 'assets/images/tataSalt.jpg',
      'type': 'Grocery',
      'name': 'Tata Salt 250g ',
      'price': 30,
      'rating': '4.5',
      'noOfRatings': 160
    },
    {
      'image': 'assets/images/tataSalt.jpg',
      'type': 'Grocery',
      'name': 'Tata Salt 250g ',
      'price': 30,
      'rating': '4.5',
      'noOfRatings': 160
    },
    {
      'image': 'assets/images/tataSalt.jpg',
      'type': 'Grocery',
      'name': 'Tata Salt 250g ',
      'price': 30,
      'rating': '4.5',
      'noOfRatings': 160
    },
    {
      'image': 'assets/images/tataSalt.jpg',
      'type': 'Grocery',
      'name': 'Tata Salt 250g ',
      'price': 30,
      'rating': '4.5',
      'noOfRatings': 160
    },
  ];

  bool isGridView = false;
  String currentCategoryDesign = '';
  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap:() => FocusScope.of(context).unfocus(),
      child: Scaffold(
          appBar: AppBar(
            primary: true,
            leadingWidth: 40,
            automaticallyImplyLeading: false,
            elevation: 0,
            title: Padding(
              padding: EdgeInsets.symmetric(horizontal:mediaQueryHeight*0.01),
              child: Row(
                children: [
                  backButton(onTap: () => Navigator.of(context).pop()),
                  SizedBox(width: mediaQueryHeight*0.02,),
                  RichText(
                      text: TextSpan(
                          style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                          children: [
                        TextSpan(text: 'Search in ', style: TextStyle(color: darkBlue)),
                        TextSpan(
                            text: widget.categoryName,
                            style: TextStyle(color: greenColor))
                      ])),
                ],
              ),
            ),
            backgroundColor: lightestGrey,
          ),
          body: Column(
            children: [
              Container(
                  color: lightestGrey,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mediaQueryWidth * 0.06, vertical: 10),
                    child: Row(
                      children: [
                        Expanded(child: searchTextFormField(verticalPadding: 8)),
                        SizedBox(
                          width: mediaQueryWidth * 0.09,
                        ),
                        Image.asset(settingsSliders)
                      ],
                    ),
                  )),
              SizedBox(
                height: mediaQueryHeight * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.06),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                        children: [
                          TextSpan(
                              text: '${products.length}',
                              style: TextStyle(color: activeText)),
                          WidgetSpan(
                              child: SizedBox(
                            width: mediaQueryWidth * 0.02,
                          )),
                          TextSpan(
                              text: 'Results',
                              style: TextStyle(color: inactiveText))
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: lightestGrey),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(sortingDesign),
                          ),
                        ),
                        SizedBox(
                          width: mediaQueryWidth * 0.03,
                        ),
                        GestureDetector(
                          onTap: () {
                            isGridView = !isGridView;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: lightestGrey),
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.asset(isGridView
                                  ? listCategoryDesign
                                  : categoryDesign),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: mediaQueryHeight * 0.01,
              ),
              isGridView ? groceryBuildGridView() : groceryBuildListView(),
            ],
          )),
    );
  }
}
