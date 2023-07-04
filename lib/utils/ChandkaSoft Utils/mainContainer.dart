import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyMainContainer extends StatefulWidget {
  MyMainContainer({this.text});

  String? text;

  @override
  State<MyMainContainer> createState() => _MyMainContainerState();
}

class _MyMainContainerState extends State<MyMainContainer> {
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
        padding: const EdgeInsets.only(left: 30, right: 30, top: 3, bottom: 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.text!,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            CupertinoSwitch(
              value: switchValue,
              onChanged: (bool newValue) {
                setState(() {
                  newValue = !switchValue;
                  switchValue = newValue;
                });
              },
              activeColor: Colors.blue,
              trackColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
