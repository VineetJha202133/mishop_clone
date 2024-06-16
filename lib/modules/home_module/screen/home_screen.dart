import 'package:flutter/material.dart';
import 'package:mishop/modules/category_module/categorySubModules/category_view.dart';
import 'package:mishop/modules/home_module/widgets/grid_view_items.dart';
import 'package:mishop/modules/home_module/widgets/list_tile_address.dart';
import 'package:mishop/modules/home_module/widgets/search_bar.dart';
import 'package:mishop/utils/appColor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> offerImage = [
    'assets/images/Group 85.png',
    'assets/images/Group 85.png',
    'assets/images/Group 85.png'
  ];

  List<String> types = ['Soft Drinks', 'Grocery', 'Cosmetics', 'Kitchen'];

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    // final mediaQueryHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.06),
              child: Column(
                children: [
                  listTileAdress(),
                  const SizedBox(
                    height: 10,
                  ),
                  searchBar(),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    //*
                    height: 150,
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 10,
                        );
                      },
        
                      itemCount: offerImage.length,
                      itemBuilder: (context, index) {
                        return Image.asset(offerImage[index]);
                      },
                      // padding: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      // itemExtent: mediaQueryWidth * 0.807,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: types.map((value) {
                        return GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => CategoryView(
                                                categoryName: value)));
                                  },
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12))),
                                      side: MaterialStateProperty.all(
                                          BorderSide(color: darkBlue))),
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                        color: darkBlue,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto',
                                        fontSize: 14),
                                  )),
                              const SizedBox(
                                width: 15,
                              )
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Most Selling Items',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            color: activeText),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            color: greenColor,
                            fontSize: 14),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  gridViewItems()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
