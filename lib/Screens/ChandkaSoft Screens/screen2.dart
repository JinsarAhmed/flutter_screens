import 'package:flutter/material.dart';

import '../../utils/ChandkaSoft Utils/packageContainer.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Screen2(),
  ));
}

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  List<String> text1 = [
    "5 T-Shirts dry and Cleaning   (\$60)",
    "Shirt jeans slip Dry and  (\$40) \nCleaning",
    "5 jeans Dry and cleaning   (\$80)",
    "2 Uniform Dry and Cleaning  (\$50)",
    "2 Linen Dry and Cleaning  (\$80)",
  ];

  List<String> text2 = [
    "You will get \$10 off buy this package",
    "You will get \$10 off buy this package",
    "You will get \$10 off buy this package",
    "You will get \$10 off buy this package",
    "You will get \$10 off buy this package",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.blue,
        elevation: 10,
        title: const Text(
          "Package",
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.blue,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.list_rounded, color: Colors.blueAccent))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 20, bottom: 15, right: 5),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 3, right: 2, bottom: 20),
                child: Container(
                  width: 100,
                  height: 160,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.9),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        )
                      ],
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              child: Container(
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.9),
                                      spreadRadius: 3,
                                      blurRadius: 5,
                                      offset: const Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Image.asset(
                                    'assets/images/dress$index.jpeg',
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      PackageContainer(
                        text1: text1[index],
                        text2: text2[index],
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
