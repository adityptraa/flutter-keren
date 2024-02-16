import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Lat1List extends StatelessWidget {
  List<Color> mycolors = [Colors.red, Colors.green, Colors.blue, Colors.amber];

  List<Widget> myList = [];
  Lat1List({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Tes",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blueAccent,
          ),
          body: ListView.separated(
            separatorBuilder: (context, index) => Container(
              height: 20,
              width: 20,
              color: Colors.black,
            ),
            itemCount: mycolors.length,
            itemBuilder: (context, index) => Container(
              height: 300,
              width: 300,
              color: mycolors[index],
            ),
          )),
    );
  }
}