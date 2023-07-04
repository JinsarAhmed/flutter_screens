import 'package:flutter/material.dart';

class TimeSlotContainer extends StatefulWidget {
  TimeSlotContainer({this.time, this.color, this.textColor});

  String? time;
  Color? color;
  Color? textColor;
  @override
  State<TimeSlotContainer> createState() => _TimeSlotContainerState();
}

class _TimeSlotContainerState extends State<TimeSlotContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.9),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3),
            )
          ],
          color: widget.color,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 13, bottom: 13),
        child: Text(
          widget.time!,
          style:
              TextStyle(color: widget.textColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
