import 'package:flutter/material.dart';
import 'package:mishop/modules/base_module/screen/bottom_navigation_bar.dart';
import 'package:mishop/modules/cart_module/screen/review_view.dart';
import 'package:mishop/modules/common_widget/back_button.dart';
import 'package:mishop/utils/appColor.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  List<Map<String, dynamic>> products = [
    {
      'image': 'assets/images/134006_6-dhara-oil-groundnut 1.png',
      'type': 'Grocery',
      'name': 'Dhara Groundnut Refined Cooking Oil 5L',
      'price': 540,
      'count': 1
    },
    {
      'image': 'assets/images/40015868-9_2-mountain-dew-soft-drink 1.png',
      'type': 'Grocery',
      'name': 'Mountain Dew 1L Soft Drink Bottle',
      'price': 60,
      'count': 1
    },
    {
      'image': 'assets/images/134006_6-dhara-oil-groundnut 1.png',
      'type': 'Grocery',
      'name': 'Dhara Groundnut Refined Cooking Oil 5L',
      'price': 540,
      'count': 1
    },
    {
      'image': 'assets/images/tataSalt.jpg',
      'type': 'Grocery',
      'name': 'Tata Salt 250g ',
      'price': 30,
      'count': 1
    },
    {
      'image': 'assets/images/tataSalt.jpg',
      'type': 'Grocery',
      'name': 'Tata Salt 250g ',
      'price': 30,
      'count': 1
    },
    {
      'image': 'assets/images/134006_6-dhara-oil-groundnut 1.png',
      'type': 'Grocery',
      'name': 'Dhara Groundnut Refined Cooking Oil 5L',
      'price': 540,
      'count': 1
    },
    {
      'image': 'assets/images/134006_6-dhara-oil-groundnut 1.png',
      'type': 'Grocery',
      'name': 'Dhara Groundnut Refined Cooking Oil 5L',
      'price': 540,
      'count': 1
    },
    {
      'image': 'assets/images/134006_6-dhara-oil-groundnut 1.png',
      'type': 'Grocery',
      'name': 'Dhara Groundnut Refined Cooking Oil 5L',
      'price': 540,
      'count': 1
    },
  ];

// int count = 1;

  void increment(int index) {
    setState(() {
      products[index]['count']++;
    });
  }

  void decrement(int index) {
    if (products[index]['count'] > 1) {
      setState(() {
        products[index]['count']--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    double subtotal = 0;
    for (var product in products) {
      subtotal += product['count'] * product['price'];
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            backButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CustomBottomNavigationBar()));
              },
            ),
            SizedBox(
              width: mediaQueryHeight * 0.02,
            ),
            Text(
              'My Cart',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  color: darkBlue,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: mediaQueryHeight*0.04),
            child: Row(
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
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: mediaQueryHeight * 0.02,
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
                                        text:
                                            'Rs. ${products[index]['count'] * products[index]['price']}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: darkBlue)),
                                    const WidgetSpan(
                                        child: SizedBox(
                                      width: 5,
                                    )),
                                  ])),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () => decrement(index),
                                    child: Container(
                                      height: 40,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border:
                                              Border.all(color: lightestGrey)),
                                      child: Center(
                                          child: Text(
                                        '-',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            color: darkBlue,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20),
                                      )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: mediaQueryWidth * 0.04,
                                  ),
                                  Text(
                                    '${products[index]['count']}',
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w600,
                                        color: greenColor,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    width: mediaQueryWidth * 0.04,
                                  ),
                                  GestureDetector(
                                    onTap: () => increment(index),
                                    child: Container(
                                      height: 40,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border:
                                              Border.all(color: lightestGrey)),
                                      child: Center(
                                          child: Text(
                                        '+',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            color: darkBlue,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20),
                                      )),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      trailing: null);
                },
              ),
            ),
            Divider(
              thickness: 1,
              color: lightGrey,
            ),
            SizedBox(
              height: mediaQueryHeight * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.06),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sub Total',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: inactiveText,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Rs. $subtotal',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: darkBlue,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mediaQueryHeight * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Charges',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: inactiveText,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Rs. 10',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: darkBlue,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mediaQueryHeight * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: inactiveText,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Rs. 0',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: darkBlue,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mediaQueryHeight * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sub Total',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: darkBlue,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                      Text(
                        'Rs. ${subtotal + 10}',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: greenColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mediaQueryHeight * 0.04,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mediaQueryWidth * 0.02),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Review(products: products)));
                        },
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: greenColor,
                            minimumSize: Size.fromHeight(50)),
                        // ),
                        child: Text(
                          'Proceed to Checkout',
                          style: TextStyle(
                              color: whiteColor,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        )),
                  ),
                  SizedBox(
                    height: mediaQueryHeight * 0.02,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
