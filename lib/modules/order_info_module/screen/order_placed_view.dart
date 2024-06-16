import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:mishop/modules/base_module/screen/bottom_navigation_bar.dart';
import 'package:mishop/modules/order_info_module/screen/order_details.dart';
import 'package:mishop/utils/appColor.dart';
import 'package:mishop/utils/assetPath.dart';

class OrderPlaced extends StatefulWidget {
  const OrderPlaced({super.key});

  @override
  State<OrderPlaced> createState() => _OrderPlacedState();
}

class _OrderPlacedState extends State<OrderPlaced> {
  @override
  Widget build(BuildContext context) {

    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth*0.10),
        child: Column(
          children: [
            SizedBox(height: mediaQueryHeight*0.24,),
            DottedBorder(
              borderType: BorderType.Circle,
              color: lightGrey,
              dashPattern: [10,6],
              radius: Radius.circular(20),
              padding: EdgeInsets.all(50),
              child: Stack(
                
                children:[
                  Image.asset(checkMark),
                  Positioned(
                    
                    // top: 0,
                    right: 50,
                    bottom: 60,
                    left: 0,
                    
                    child: Image.asset(mishopLogoTransparent, height: 81,width: 81,))
                ]
                )
            ),

            SizedBox(height: mediaQueryHeight*0.05,),
        
            Text('Thank You', style: TextStyle(fontFamily: 'Roboto', fontSize: 36, fontWeight: FontWeight.w700, color: darkBlue),),
            SizedBox(height: mediaQueryHeight*0.02,),
            Text('Your order has been placed successfully',textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Roboto', fontSize: 20, fontWeight: FontWeight.w400, color: inactiveText),),
            SizedBox(height: mediaQueryHeight*0.11,),
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: greenColor,
                minimumSize: const Size.fromHeight(50)
              ),
              
                            
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OrderDetails()));
                },
                child: Text(
                  'View Detail',
                  style: TextStyle(
                    color: whiteColor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
                            ),
              )),

            SizedBox(height: mediaQueryHeight*0.03,),

           GestureDetector(
            onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => CustomBottomNavigationBar()));
            },
            child: Text('Continue Shopping', style: TextStyle(fontFamily: 'Roboto', fontSize:20, fontWeight: FontWeight.w500, color: greenColor),)), 
          ],
        ),
      ),
    );
  }
}