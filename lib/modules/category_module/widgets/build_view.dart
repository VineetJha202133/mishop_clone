import 'package:flutter/material.dart';
import 'package:mishop/modules/category_module/categorySubModules/category_view.dart';
import 'package:mishop/utils/appColor.dart';
import 'package:mishop/utils/assetPath.dart';

List<Map<String, dynamic>> categories =[
    {
      'image' : sodaBottle,
      'name' : 'Soft Drinks'
    },
    {
      'image' : grocery,
      'name' : 'Grocery'
    },
    {
      'image' : cosmetics,
      'name' : 'Cosmetics'
    },
    {
      'image' : kitchen,
      'name' : 'Kitchen'
    },
    {
      'image' : cleaning,
      'name' : 'Cleaning Items'
    },
    {
      'image' : bathItems,
      'name' : 'Bath Items'
    },
    {
      'image' : packedFoods,
      'name' : 'Packed Foods'
    },
    {
      'image' : frozenFoods,
      'name' : 'Frozen Foods'
    },

  ];


Widget buildListView(){
                return Expanded(
                  child: ListView.separated(
                    // physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return const Divider(height: 10,);
                    },
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                            Navigator.push(context,
                          MaterialPageRoute(builder:(context) => CategoryView(categoryName: categories[index]['name']))
                            );
                          },
                        child: ListTile(
                          leading: Image.asset(deliveryBox,),
                          title: Text(categories[index]['name'], style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: darkBlue),),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      );
                    },
                    ),
                );
}

Widget buildGridView(){
  return Expanded(
    child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 15, childAspectRatio: 0.61, ),
                      itemCount: categories.length,
                      shrinkWrap: true,
                      // physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, value) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                          MaterialPageRoute(builder:(context) => CategoryView(categoryName: categories[value]['name']))
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: inactiveText, width: 0.5),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            
                            child: Center(
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(categories[value]['image'], height: 100, width: 100,),
                                    Text(categories[value]['name'], style: TextStyle(fontSize: 14, fontFamily: 'Roboto', fontWeight: FontWeight.w400,color: darkBlue),)                                    
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
  );
}