import 'package:flutter/material.dart';
import 'package:mishop/modules/base_module/screen/bottom_navigation_bar.dart';
import 'package:mishop/modules/common_widget/back_button.dart';
import 'package:mishop/modules/order_info_module/widgets/timeline_tile.dart';
import 'package:mishop/utils/appColor.dart';
import 'package:mishop/utils/assetPath.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
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

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;
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
              'Order Details',
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
            padding: EdgeInsets.only(right: mediaQueryHeight*0.02),
            child: Container(
              width: 85,
              height: 30,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: greenColor,
                  ),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_downward,
                      color: greenColor, size: Checkbox.width),
                  Text(
                    'Receipt',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: greenColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: mediaQueryHeight * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: mediaQueryWidth * 0.06),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order Detail',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                color: inactiveText,
                                fontSize: 14),
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.015,
                          ),
                          Text(
                            'Order No. MS36546876584',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto',
                                color: blackColor,
                                fontSize: 14),
                          ),
                          SizedBox(height: mediaQueryHeight * 0.01),
                          Text(
                            'Order Date/Time : 21 August 2023, 12:04:02 pm',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto',
                                color: inactiveText,
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.02,
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 10,
                    ),
                    SizedBox(
                      height: mediaQueryHeight * 0.01,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: mediaQueryWidth * 0.06),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shipping Detail',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                color: inactiveText,
                                fontSize: 14),
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.015,
                          ),
                          Text(
                            'Meenu Patel',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto',
                                color: blackColor,
                                fontSize: 14),
                          ),
                          SizedBox(height: mediaQueryHeight * 0.01),
                          Text(
                            '+91 9928 1234 00',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto',
                                color: inactiveText,
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.015,
                          ),
                          Row(
                            children: [
                              // Adjust spacing between logo and address
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery Address:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Roboto',
                                          color: blackColor,
                                          fontSize: 12),
                                    ),
                                    Text(
                                      'C-15, Patel House, Near Hudda Center, Vatika City, Noida - 121314',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Roboto',
                                          color: blackColor,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(width: 8),

                              Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      color: lightestGrey,
                                      borderRadius: BorderRadius.circular(2)),
                                  child: Image.asset(googleMaps,
                                      height: 24,
                                      width:
                                          24)), // Adjust height and width as needed
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: mediaQueryHeight * 0.02,
                    ),
                    Divider(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: mediaQueryWidth * 0.06),
                      child: Text(
                        'Items',
                        style: TextStyle(
                          color: inactiveText,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
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
                                  products[index]['name'],
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      color: darkBlue),
                                ),
                                Row(
                                  children: [
                                    Text('x${products[index]['count']}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: inactiveText,
                                            fontSize: 16,
                                            fontFamily: 'Roboto')),
                                    SizedBox(
                                      width: mediaQueryWidth * 0.02,
                                    ),
                                    Text(
                                        'Rs. ${products[index]['count'] * products[index]['price']}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: blackColor,
                                            fontSize: 14,
                                            fontFamily: 'Roboto')),
                                  ],
                                )
                              ],
                            ),
                            trailing: null);
                      },
                    ),
                    Divider(
                      height: 10,
                    ),
                    SizedBox(
                      height: mediaQueryHeight * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: mediaQueryWidth * 0.06),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Payment Details',
                            style: TextStyle(
                                color: inactiveText,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontFamily: 'Roboto'),
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.03,
                          ),
                          RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                                children: [
                                  TextSpan(
                                      text: 'Payment Type:  UPI ',
                                      style: TextStyle(color: blackColor)),
                                  TextSpan(
                                      text: '(992812340001@paytm)',
                                      style: TextStyle(color: inactiveText))
                                ]),
                          ),
                          Text(
                            'Transaction No. T787876436456432',
                            style: TextStyle(
                                color: blackColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontFamily: 'Roboto'),
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.005,
                          ),
                          Text(
                            'Date/Time : 21 August 2023, 12:04:00 pm',
                            style: TextStyle(
                                color: inactiveText,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontFamily: 'Roboto'),
                          ),
                          SizedBox(
                            height: mediaQueryHeight * 0.02,
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 10,
                    ),
                    SizedBox(
                      height: mediaQueryHeight * 0.06,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: mediaQueryWidth * 0.08),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: const StadiumBorder(),
                                    backgroundColor: whiteColor,
                                    minimumSize: const Size.fromHeight(50),
                                    side: BorderSide(color: lightGrey)),
                                child: Text(
                                  'Raise Issue',
                                  style: TextStyle(
                                      color: darkBlue,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                )),
                          ),
                          SizedBox(
                            width: mediaQueryWidth * 0.01,
                          ),
                          Expanded(
                            child: ElevatedButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          color: Color(0xffe5ebee),
                                          child: ListView(
                                            shrinkWrap: true,
                                            children: const [
                                              CustomTimelineTile(
                                                isFirst: true,
                                                isLast: false,
                                                isPast: true,
                                                orderType: 'Order Placed',
                                                dateTime:
                                                    'Aug 21, 2023    12:04:02 pm',
                                              ),
                                              CustomTimelineTile(
                                                isFirst: false,
                                                isLast: false,
                                                isPast: true,
                                                orderType: 'Order Accepted',
                                                dateTime:
                                                    'Aug 21, 2023    12:06:04 pm',
                                              ),
                                              CustomTimelineTile(
                                                isFirst: false,
                                                isLast: false,
                                                isPast: true,
                                                orderType: 'Order Shipped',
                                                dateTime:
                                                    'Aug 21, 2023    12:20:01 pm',
                                              ),
                                              CustomTimelineTile(
                                                isFirst: false,
                                                isLast: true,
                                                isPast: false,
                                                orderType: 'Delivered',
                                                dateTime: null,
                                              )
                                            ],
                                          ),
                                        );
                                      });
                                  // showMyBottomSheet(context); //Raise issue
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: const StadiumBorder(),
                                    backgroundColor: greenColor,
                                    minimumSize: const Size.fromHeight(50)),
                                child: Text(
                                  'Order Status',
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: mediaQueryHeight * 0.02,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
