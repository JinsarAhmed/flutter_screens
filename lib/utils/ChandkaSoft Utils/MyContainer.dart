import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  MyContainer({this.color, this.day, this.date, this.wday, this.textColor});

  Color? color;
  String? day;
  String? date;
  String? wday;
  Color? textColor;

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 80,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.9),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3), // Offset of the shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: Center(
                child: Text(
                  widget.day!,
                  style: TextStyle(
                      color: widget.textColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10, top: 5),
            child: Column(
              children: [
                Text(widget.date!),
                Text(widget.wday!),
              ],
            ),
          )
        ],
      ),
    );
  }
}
