import 'package:flutter/material.dart';
import 'package:mishop/modules/category_module/categorySubModules/product_view.dart';
import 'package:mishop/utils/appColor.dart';
import 'package:mishop/utils/globalMap.dart';

Widget gridViewItems(){
  return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5, childAspectRatio: 0.66, ),
                    itemCount: products.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, value) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => ProductView(products: products),));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: inactiveText, width: 0.5),
                          ),
                          width: 200,
                          // height: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                        
                                        
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(child: Image.asset(products[value]['image'])),
                                  CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    child:
                                        Image.asset('assets/images/Ellipse 75.png'),
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
                                        
                                        
                              Text(products[value]['name'],),
                                        
                              Text('Rs. ${products[value]['price']}',
                              style: TextStyle(
                                color: greenColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w700
                              ),),
                                        
                              Row(
                                children: [
                                  Image.asset('assets/images/Star.png'),
                                  const SizedBox(width: 5,),
                                  Text(products[value]['rating'], style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: activeText, fontFamily: 'Roboto'),),
                                  const SizedBox(width: 5,),
                                  Text('(${products[value]['noOfRatings']})', style: TextStyle(fontSize: 12, fontFamily: 'Roboto, ', fontWeight: FontWeight.w400, color: inactiveText),)
                                ],
                              )
                                        
                            ],
                          ),
                        ),
                      );
                    });
}