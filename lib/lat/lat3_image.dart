import 'package:flutter/material.dart';

class Lat3Image extends StatelessWidget {
  const Lat3Image({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage("../images/xplore.png"),
            ),
          ),
        ),
      ),
    );
  }
}
