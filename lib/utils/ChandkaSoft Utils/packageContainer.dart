import 'package:flutter/material.dart';

import 'imageContainer.dart';

class PackageContainer extends StatefulWidget {
  PackageContainer({this.text1, this.text2});
  String? text1;
  String? text2;

  @override
  State<PackageContainer> createState() => _PackageContainerState();
}

class _PackageContainerState extends State<PackageContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text1!,
            style: TextStyle(
              color: Color.fromARGB(255, 4, 48, 83),
            ),
          ),
          Text(widget.text2!,
              style: TextStyle(color: Color.fromARGB(255, 4, 48, 83))),
          Padding(
            padding: EdgeInsets.only(top: 10, right: 5),
            child: Row(
              children: [
                ImageContainer(
                  imageAddress: "washing-machine.png",
                ),
                SizedBox(
                  width: 10,
                ),
                ImageContainer(
                  imageAddress: "laundry.png",
                ),
                SizedBox(
                  width: 10,
                ),
                ImageContainer(
                  imageAddress: "iron.png",
                ),
              ],
            ),
          ),
          Row(
            children: const [
              SizedBox(
                width: 7,
              ),
              Text(
                "Wash",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 25,
              ),
              Text(
                "Drycleaning",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 18,
              ),
              Text(
                "Iron",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 7,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
