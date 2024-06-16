import 'package:flutter/material.dart';
import 'package:mishop/modules/cart_module/screen/my_cart_view.dart';
import 'package:mishop/modules/cart_module/screen/checkout_view.dart';
import 'package:mishop/modules/common_widget/back_button.dart';
import 'package:mishop/utils/appColor.dart';

class Review extends StatefulWidget {
  final List<Map<String, dynamic>> products;
  const Review({required this.products, super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    double subtotal = 0;
    for (var product in widget.products) {
      subtotal += product['count'] * product['price'];
    }
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
              'Review',
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
            padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth*0.04),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyCart()));
              },
              child: Container(
                width: 65,
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: greenColor,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      'Edit',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: greenColor),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.06),
              child: Text(
                'Items',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: inactiveText),
              ),
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 10,
                  );
                },
                itemCount: widget.products.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: Image.asset(
                        widget.products[index]['image'],
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.products[index]['name'],
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                color: darkBlue),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('x${widget.products[index]['count']}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: darkBlue,
                                      fontSize: 14,
                                      fontFamily: 'Roboto')),
                              Text(
                                  'Rs. ${widget.products[index]['count'] * widget.products[index]['price']}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: darkBlue,
                                      fontSize: 14,
                                      fontFamily: 'Roboto')),
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
                                  builder: (context) => Checkout()));
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
