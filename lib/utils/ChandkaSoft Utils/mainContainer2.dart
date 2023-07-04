import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyMainContainer2 extends StatefulWidget {
  MyMainContainer2({this.text});

  String? text;

  @override
  State<MyMainContainer2> createState() => _MyMainContainer2State();
}

class _MyMainContainer2State extends State<MyMainContainer2> {
  @override
  Widget build(BuildContext context) {
    bool switchValue = false;

    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.9),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3),
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          top: 1,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.text!,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_down)),
          ],
        ),
      ),
    );
  }
}
