import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  ImageContainer({this.imageAddress});
  String? imageAddress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.blue,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.9),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(9),
        child: Image.asset(
          'assets/images/${imageAddress}',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
