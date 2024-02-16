import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Lat6dateformat extends StatelessWidget {
  const Lat6dateformat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Date Format"),),
        body: Center(
          child: Text(
            // DateFormat.yMMMEd().format(DateTime.now()),
            DateFormat.yMMMMEEEEd().add_Hms().format(DateTime.now()),
            style: const TextStyle(
              fontSize: 25
            ),
          ), 
        ),
      ),
    );
  }
}