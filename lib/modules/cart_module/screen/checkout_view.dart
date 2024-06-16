import 'package:flutter/material.dart';
import 'package:mishop/modules/common_widget/back_button.dart';
import 'package:mishop/modules/order_info_module/screen/order_placed_view.dart';
import 'package:mishop/utils/appColor.dart';
import 'package:mishop/utils/assetPath.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int selected_index = -1;

  List<Map<String, dynamic>> paymentMethods = [
    {'name': 'Apple Pay', 'image': applePay},
    {'name': 'UPI', 'image': upi},
    {'name': 'Card Payment', 'image': cardPayment},
    {'name': 'Net Banking', 'image': netBanking},
    {'name': 'Cash On Delivery', 'image': cashOnDelivery},
    {'name': 'Card Payment', 'image': cardPayment},
    {'name': 'Net Banking', 'image': netBanking},
    {'name': 'Cash On Delivery', 'image': cashOnDelivery},
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
                  backButton(onTap: () => Navigator.of(context).pop()),
                  SizedBox(
                    width: mediaQueryWidth * 0.02,
                  ),
                  Text(
                    'Checkout',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: darkBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              SizedBox(
                height: mediaQueryHeight * 0.02,
              ),
              Text(
                'Delivery Address',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    color: activeText),
              ),
              SizedBox(
                height: mediaQueryHeight * 0.01,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: mediaQueryWidth * 0.01),
                    leading: Container(
                      height: double.infinity,
                      color: lightGrey,
                      child: Image.asset(addressBlack),
                    ),
                    title: Text(
                      '248, 7th Street, New South Wales, New York, Zip Code 548799, UK',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          color: textColor,
                          fontSize: 14),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: inactiveText,
                    ),
                  );
                },
              ),
              const Divider(
                height: 10,
              ),
              SizedBox(
                height: mediaQueryHeight * 0.02,
              ),
              Text(
                'Payment Methods',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    color: activeText),
              ),
              SizedBox(
                height: mediaQueryHeight * 0.02,
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: paymentMethods.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          onTap: () {
                              setState(() {
                                selected_index = index;
                              });
                            },
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: mediaQueryWidth * 0.01,
                              vertical: mediaQueryHeight * 0.01),
                          leading: Container(
                              color: lightGrey,
                              height: double.infinity,
                              child: Image.asset(
                                paymentMethods[index]['image'],
                              )),
                          title: Text(
                            paymentMethods[index]['name'],
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                                color: textColor),
                          ),
                          trailing: CircleAvatar(
                              backgroundColor: selected_index == index
                                  ? greenColor
                                  : lightGrey,
                              radius: 12,
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: whiteColor,
                              )),
                        ),
                        const Divider(
                          height: 10,
                        )
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: mediaQueryHeight * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                        color: inactiveText,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  ),
                  Text(
                    'Rs. 605',
                    style: TextStyle(
                        color: darkBlue,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: mediaQueryHeight * 0.08,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.02),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderPlaced()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: greenColor,
                        minimumSize: const Size.fromHeight(50)),
                    // ),
                    child: Text(
                      'Pay Now',
                      style: TextStyle(
                          color: whiteColor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
