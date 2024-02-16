import 'package:flutter/material.dart';

class Lat4extract extends StatelessWidget {
  const Lat4extract({super.key});

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
            ChatItem(),
            ChatItem(),
            ChatItem(),
          ],
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  const ChatItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text("Geral Ganteng"),
      subtitle: Text("Hi Geral, namaku Alpin", maxLines: 2, overflow: TextOverflow.ellipsis),
      leading: CircleAvatar(),
      trailing: Text("10:00 AM"),
      tileColor: Color.fromARGB(59, 255, 255, 255),
    );
  }
}