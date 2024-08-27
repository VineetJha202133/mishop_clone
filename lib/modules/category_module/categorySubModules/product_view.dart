import 'package:flutter/material.dart';
import 'package:mishop/modules/common_widget/back_button.dart';
import 'package:mishop/utils/appColor.dart';
import 'package:mishop/utils/assetPath.dart';
import 'package:mishop/utils/utils.dart';

class ProductView extends StatefulWidget {
  final List<Map<String, dynamic>> products;
  const ProductView({super.key, required this.products});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  int count = 1;
  int _currentIndex = 0;
  bool is1LSelected = false;
  bool isAdded = false;

  final PageController _pageController = PageController();

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    if (count > 1) {
      setState(() {
        count--;
      });
    }
  }

  List<String> images = [
    dharaOilGreyBg,
    applePay,
    dharaOilGreyBg,
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: lightestGrey,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: mediaQueryWidth * 0.06,
                    vertical: mediaQueryHeight * 0.02),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        backButton(onTap: () => Navigator.of(context).pop()),
                        Expanded(
                          child: PageView.builder(
                            controller: _pageController,
                            onPageChanged: (index) {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                            itemCount: images.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Hero(
                                  tag:
                                      "${widget.products[0]['id']}_$index", // Unique tag here
                                  child: Image.asset(images[index],
                                      height: 200, width: 200),
                                ),
                              );
                            },
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: whiteColor,
                          child: Image.asset(greenHeart),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                          images.length,
                          (index) => Row(
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  color: _currentIndex == index
                                      ? darkBlue
                                      : greenColor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: mediaQueryHeight * 0.02,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.06),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Grocery',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            color: greenColor,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: mediaQueryHeight * 0.01,
                      ),
                      Text(
                        'Dhara Groundnut Refined Cooking Oil ${is1LSelected ? '1L' : '5L'}',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            color: activeText),
                      ),
                      SizedBox(
                        height: mediaQueryHeight * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rs. 540',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                color: darkBlue),
                          ),
                          Row(
                            children: [
                              Image.asset('assets/images/Star.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '4.8',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: activeText,
                                    fontFamily: 'Roboto'),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '(230)',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Roboto, ',
                                    fontWeight: FontWeight.w400,
                                    color: inactiveText),
                              )
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: lightGrey,
                      ),
                      SizedBox(
                        height: mediaQueryHeight * 0.01,
                      ),
                      Text(
                        'Pack/Size/Weight',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            color: inactiveText,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: mediaQueryHeight * 0.02,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                is1LSelected = false;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: is1LSelected ? whiteColor : greenColor,
                                  border: Border.all(
                                      color: is1LSelected
                                          ? lightestGrey
                                          : greenColor)),
                              child: Center(
                                  child: Text(
                                '5L',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color:
                                        is1LSelected ? lightGrey : whiteColor,
                                    fontWeight: FontWeight.w400),
                              )),
                            ),
                          ),
                          SizedBox(
                            width: mediaQueryWidth * 0.02,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                is1LSelected = true;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: is1LSelected ? greenColor : whiteColor,
                                  border: Border.all(
                                      color: is1LSelected
                                          ? greenColor
                                          : lightestGrey)),
                              child: Center(
                                  child: Text(
                                '1L',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color:
                                        is1LSelected ? whiteColor : lightGrey,
                                    fontWeight: FontWeight.w400),
                              )),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: mediaQueryHeight * 0.03,
                      ),
                      Text(
                        'Quantity',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            color: inactiveText,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: mediaQueryHeight * 0.02,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () => decrement(),
                            child: Container(
                              height: 40,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: lightestGrey)),
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
                            '$count',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                                color: greenColor,
                                fontSize: 20),
                          ),
                          SizedBox(
                            width: mediaQueryWidth * 0.04,
                          ),
                          GestureDetector(
                            onTap: () => increment(),
                            child: Container(
                              height: 40,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: lightestGrey)),
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
                          ),
                        ],
                      ),
                      SizedBox(
                        height: mediaQueryHeight * 0.02,
                      ),
                      Divider(
                        thickness: 1,
                        color: lightGrey,
                      ),
                      SizedBox(
                        height: mediaQueryHeight * 0.02,
                      ),
                      Text(
                        'Product Details',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            color: inactiveText,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: mediaQueryHeight * 0.02,
                      ),
                      Text(
                        'Refined oil is used in various household cooking including deep frying, stir frying, and as a dressing for salads and baked goods.',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            color: inactiveText,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: lightestGrey,
              padding: EdgeInsets.symmetric(
                  horizontal: mediaQueryWidth * 0.06,
                  vertical: mediaQueryHeight * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isAdded
                      ? ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              isAdded = !isAdded;
                            });
                          },
                          icon: Icon(
                            Icons.remove_shopping_cart,
                            color: Colors.white,
                          ),
                          label: Text(
                            'Remove from Cart',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red),
                          ),
                        )
                      : ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              isAdded = !isAdded;
                            });
                          },
                          icon: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                          ),
                          label: Text(
                            'Add to Cart',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(greenColor),
                          ),
                        ),
                  Text(
                    'Rs. ${count * 540}',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        color: darkBlue),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
