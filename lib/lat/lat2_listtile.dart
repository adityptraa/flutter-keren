import 'package:flutter/material.dart';

class Lat2listtile extends StatelessWidget {
  const Lat2listtile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Whatsupp",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView(
          children: const [
            ListTile(
              title: Text("Geral Ganteng"),
              subtitle: Text("Hi Geral, namaku Alpin", maxLines: 2, overflow: TextOverflow.ellipsis,),
              leading: CircleAvatar(),
              trailing: Text("10:00 AM"),
              tileColor: Color.fromARGB(59, 255, 255, 255),
            )
          ],
        ),
      ),
    );
  }
}
