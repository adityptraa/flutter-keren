import 'package:flutter/material.dart';

class Lat5Mapping extends StatelessWidget {
  Lat5Mapping({super.key});

  final List<Map<String, dynamic>> myList = [
    {
      "Nama": "Joko ",
      "Age": 32,
      "FavColor": [
        "White",
        "Blue",
        "Green",
        "White",
        "Blue",
        "Green",
        "White",
        "Blue",
        "Green",
        "White",
        "Blue",
        "Green",
        "White",
        "Blue",
        "Green",
      ]
    },
    {
      "Nama": "Ali",
      "Age": 22,
      "FavColor": [
        "White",
        "Yellow",
        "Blue",
        "Green",
      ]
    },
    {
      "Nama": "Aldi",
      "Age": 16,
      "FavColor": [
        "White",
        "Yellow",
        "Blue",
        "Green",
        "White",
        "Yellow",
        "Blue",
        "Green",
        "White",
        "Yellow",
        "Blue",
        "Green",
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mapping List"),
        ),
        body: ListView(
          children: myList.map((data) {
            return Card(
              margin: const EdgeInsets.all(10),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nama: ${data['Nama']}"),
                            Text("Age: ${data['Age']}"),
                          ],
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: data['FavColor'].map<Widget>((color) {
                          return Container(
                            color: Colors.green,
                            margin: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 8),
                            padding: const EdgeInsets.all(3),
                            child: Text(
                              color,
                              textAlign: TextAlign.center,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
