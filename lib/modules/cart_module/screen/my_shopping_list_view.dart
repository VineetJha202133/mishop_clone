import 'package:flutter/material.dart';
import 'package:mishop/modules/common_widget/back_button.dart';
import 'package:mishop/utils/appColor.dart';
import 'package:mishop/utils/assetPath.dart';

class MyShoppingListView extends StatefulWidget {
  const MyShoppingListView({super.key});

  @override
  State<MyShoppingListView> createState() => _MyShoppingListViewState();
}

class _MyShoppingListViewState extends State<MyShoppingListView> {
  List<Map<String, dynamic>> products = [
    {
      'image': 'assets/images/134006_6-dhara-oil-groundnut 1.png',
      'type': 'Grocery',
      'name': 'Dhara Groundnut Refined Cooking Oil 5L',
      'price': '540',
    },
    {
      'image': 'assets/images/40015868-9_2-mountain-dew-soft-drink 1.png',
      'type': 'Grocery',
      'name': 'Mountain Dew 1L Soft Drink Bottle',
      'price': '60',
    },
    {
      'image': 'assets/images/134006_6-dhara-oil-groundnut 1.png',
      'type': 'Grocery',
      'name': 'Dhara Groundnut Refined Cooking Oil 5L',
      'price': '540',
    },
    {
      'image': 'assets/images/tataSalt.jpg',
      'type': 'Grocery',
      'name': 'Tata Salt 250g ',
      'price': '30',
    },
    {
      'image': 'assets/images/tataSalt.jpg',
      'type': 'Grocery',
      'name': 'Tata Salt 250g ',
      'price': '30',
    },
    {
      'image': 'assets/images/134006_6-dhara-oil-groundnut 1.png',
      'type': 'Grocery',
      'name': 'Dhara Groundnut Refined Cooking Oil 5L',
      'price': '540',
    },
    {
      'image': 'assets/images/134006_6-dhara-oil-groundnut 1.png',
      'type': 'Grocery',
      'name': 'Dhara Groundnut Refined Cooking Oil 5L',
      'price': '540',
    },
    {
      'image': 'assets/images/134006_6-dhara-oil-groundnut 1.png',
      'type': 'Grocery',
      'name': 'Dhara Groundnut Refined Cooking Oil 5L',
      'price': '540',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.06),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      backButton(onTap: () => Navigator.of(context).pop()),
                      SizedBox(
                        width: mediaQueryHeight * 0.02,
                      ),
                      Text(
                        'My Shopping List',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: darkBlue,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),

                  // SizedBox(width: mediaQueryWidth*0.23,),

                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: darkBlue,
                        radius: 3,
                      ),
                      SizedBox(
                        width: mediaQueryWidth * 0.005,
                      ),
                      CircleAvatar(
                        backgroundColor: darkBlue,
                        radius: 3,
                      ),
                      SizedBox(
                        width: mediaQueryWidth * 0.005,
                      ),
                      CircleAvatar(
                        backgroundColor: darkBlue,
                        radius: 3,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: mediaQueryHeight * 0.01,
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 10,
                  );
                },
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: Image.asset(
                        products[index]['image'],
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            products[index]['type'],
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                color: greenColor,
                                fontSize: 12),
                          ),
                          Text(
                            products[index]['name'],
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                color: darkBlue),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                          fontSize: 14, fontFamily: 'Roboto'),
                                      children: [
                                    TextSpan(
                                        text: 'Rs. ${products[index]['price']}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: darkBlue)),
                                    const WidgetSpan(
                                        child: SizedBox(
                                      width: 5,
                                    )),
                                  ])),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: lightestGrey),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Image.asset(shoppingCartAddGreen),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      trailing: null);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.06),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: greenColor,
                      minimumSize: Size.fromHeight(50)),
                  // ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(shoppingCartAdd),
                      SizedBox(
                        width: mediaQueryWidth * 0.02,
                      ),
                      Text(
                        'Add to Cart (${products.length})',
                        style: TextStyle(
                            color: whiteColor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
