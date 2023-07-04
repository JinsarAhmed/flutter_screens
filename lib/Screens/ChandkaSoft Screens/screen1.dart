import 'package:flutter/material.dart';

import '../../utils/ChandkaSoft Utils/MyContainer.dart';
import '../../utils/ChandkaSoft Utils/mainContainer.dart';
import '../../utils/ChandkaSoft Utils/mainContainer2.dart';
import '../../utils/ChandkaSoft Utils/timeSlotsContainer.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Screen1(),
  ));
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            shadowColor: Colors.blue,
            elevation: 10,
            title: const Text(
              "Pickup Date",
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
                  icon:
                      const Icon(Icons.list_rounded, color: Colors.blueAccent))
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 50,
                    ),
                    const Text(
                      'When would you like your pickup?',
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.calendar_month,
                            color: Colors.blueAccent))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyContainer(
                      color: Colors.grey[600],
                      textColor: Colors.white,
                      day: "Fri",
                      date: "25 Jun",
                      wday: "Yesterday",
                    ),
                    MyContainer(
                      color: Colors.blue,
                      textColor: Colors.white,
                      day: "Sat",
                      date: "26 Jun",
                      wday: "Today",
                    ),
                    MyContainer(
                      color: Colors.white,
                      day: "Sun",
                      date: "27 Jun",
                      wday: "Tomorrow",
                    ),
                    MyContainer(
                      color: Colors.red,
                      textColor: Colors.white,
                      day: "Mon",
                      date: "28 Jun",
                      wday: "Blockday",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text("Available time slots"),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TimeSlotContainer(
                      time: "7am - 9pm",
                      color: Colors.blue,
                      textColor: Colors.white,
                    ),
                    TimeSlotContainer(
                      time: "10am - 12pm",
                      color: Colors.white,
                    ),
                    TimeSlotContainer(
                      time: "1pm - 2pm",
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TimeSlotContainer(
                      time: "4pm - 6pm",
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    TimeSlotContainer(
                      time: "8pm - 10pm   ",
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                MyMainContainer(
                  text: "Repeat Pickup",
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text("How Often Repeat?"),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                MyMainContainer2(
                  text: "Every week",
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text("How Many times?"),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                MyMainContainer2(
                  text: "1",
                ),
                const SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          "               Continue               ",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )),
                )
              ],
            ),
          )),
    );
  }
}
