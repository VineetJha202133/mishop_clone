import 'package:flutter/material.dart';
import 'package:mishop/modules/cart_module/screen/my_cart_view.dart';
import 'package:mishop/modules/category_module/screen/category_search_view.dart';
import 'package:mishop/modules/home_module/screen/home_screen.dart';
import 'package:mishop/modules/order_info_module/screen/order_details.dart';
import 'package:mishop/modules/profile_module/screen/my_account.dart';
import 'package:mishop/utils/appColor.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  List pages = [
    HomeScreen(),
    CategorySearchView(),
    MyCart(),
    OrderDetails(),
    MyAccount(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        selectedItemColor: whiteColor,
        unselectedItemColor: inactiveText,
        backgroundColor: darkBlue,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/Home.png',
              width: 21,
              height: 21,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/Category.png',
                width: 21,
                height: 21,
              ),
              label: 'Category'),
          BottomNavigationBarItem(
              icon: Stack(alignment: Alignment.topRight, children: [
                Badge(
                    backgroundColor: greenColor,
                    label: Text('0'),
                    child: Image.asset(
                      'assets/images/shopping-cart 1.png',
                      width: 21,
                      height: 21,
                    )),
                //   Stack(
                //     alignment: Alignment.center,
                //     children: [
                //     Image.asset('assets/images/Ellipse 72.png'),
                //     Text('0', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'Roboto', color: whiteColor),)
                // ])
              ]),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/Orders.png',
                width: 21,
                height: 21,
              ),
              label: 'Orders'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/you.png',
                width: 21,
                height: 21,
              ),
              label: 'You'),
        ],
      ),
    );
  }
}
