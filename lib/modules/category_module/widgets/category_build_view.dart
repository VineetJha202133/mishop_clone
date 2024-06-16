import 'package:flutter/material.dart';
import 'package:mishop/modules/category_module/categorySubModules/product_view.dart';
import 'package:mishop/utils/appColor.dart';
import 'package:mishop/utils/assetPath.dart';
import 'package:mishop/utils/globalMap.dart';



Widget groceryBuildGridView() {
  return Expanded(
    child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          childAspectRatio: 0.7,
        ),
        itemCount: products.length,
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, value) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductView(products: products),
                  ));
            },
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: inactiveText, width: 0.5),
              ),
              // width: 200,
              // height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(products[value]['image'],height: 148, width: 129,),
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Image.asset(favouriteIcon),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    products[value]['type'],
                    style: TextStyle(
                        color: greenColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    products[value]['name'],
                  ),
                  Text(
                    'Rs. ${products[value]['price']}',
                    style: TextStyle(
                        color: greenColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/Star.png'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        products[value]['rating'],
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
                        '(${products[value]['noOfRatings']})',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Roboto, ',
                            fontWeight: FontWeight.w400,
                            color: inactiveText),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        }),
  );
}

Widget groceryBuildListView() {
  return Expanded(
    child: ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) {
        return const Divider(
          height: 10,
        );
      },
      itemCount: products.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductView(products: products),
                ));
          },
          child: ListTile(
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
                              style:
                                  TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                              children: [
                            TextSpan(
                                text: 'Rs. ${products[index]['price']}',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: darkBlue,
                                    color: inactiveText)),
                            const WidgetSpan(
                                child: SizedBox(
                              width: 5,
                            )),
                            TextSpan(
                                text: 'Rs. ${products[index]['updatedPrice']}',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: darkBlue)),
                          ])),
                      Row(
                        children: [
                          Image.asset('assets/images/Star.png'),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            products[index]['rating'],
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
                            '(${products[index]['noOfRatings']})',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Roboto, ',
                                fontWeight: FontWeight.w400,
                                color: inactiveText),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              trailing: Image.asset(favouriteIcon)),
        );
      },
    ),
  );
}
