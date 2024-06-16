import 'package:flutter/material.dart';
import 'package:mishop/utils/appColor.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CustomTimelineTile extends StatefulWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  // ignore: prefer_typing_uninitialized_variables
  final orderType;
  final String? dateTime;
  const CustomTimelineTile({super.key, required this.isFirst, required this.isLast, required this.isPast, required this.dateTime, required this.orderType});

  @override
  State<CustomTimelineTile> createState() => _CustomTimelineTileState();
}

class _CustomTimelineTileState extends State<CustomTimelineTile> {
    

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:40.0),
      child: TimelineTile(
        isFirst: widget.isFirst,
        isLast: widget.isLast,
      
        beforeLineStyle: LineStyle(color: Color(0xffb9c9d1), thickness: 2),
        indicatorStyle: IndicatorStyle(
          width: 40,
          color: widget.isPast? greenColor:Color(0xffced9df),
          iconStyle: IconStyle(iconData: Icons.done, color:widget.isPast? whiteColor: Color(0xffced9df))
        ),
        endChild: Container(
        margin: EdgeInsets.all(25),
        // padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.orderType, style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w600, color: widget.isPast? darkBlue:Color(0XFF91aab6)),),
            if (widget.isPast)
            Text(widget.dateTime!, style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: darkBlue, fontSize: 12),)
          ],
        ),
      )
        
      ),
    );
  }
}