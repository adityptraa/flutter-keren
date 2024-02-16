import 'package:faker_dart/faker_dart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Appbartry extends StatelessWidget {
  Appbartry({super.key, Key? ke});

  final faker = Faker.instance;
  final lengthName = Faker.instance.name.fullName().length;

  final List<Map<String, dynamic>> myList = List.generate(Faker.instance.name.fullName().length, (index) {
    return {
      "title": Faker.instance.name.fullName(),
      "subTitle": Faker.instance.lorem.sentence(),
      "imageUrl": "https://picsum.photos/200/300",
    };
  });

  final List<dynamic> iconList = [
    Icons.camera_alt_outlined,
    Icons.search,
    Icons.more_vert,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Center(
            child: Text(
              "Wassup",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          leadingWidth: 100,
          titleSpacing: 15,
          centerTitle: false,
          actions: [
            for (var icon in iconList)
              IconButton(icon: Icon(icon, color: Colors.white,), onPressed: () {})
          ],
          flexibleSpace: Container(
            color: Colors.green,
          ),
        ),
        body: ListView(
          children: myList.map((data) {
            return ChatItem(
              title: data["title"],
              subTitle: data["subTitle"],
              imageUrl: data["imageUrl"],
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;

  const ChatItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedTime = "${now.hour}:${now.minute}";
    return ListTile(
      title: Text(title),
      subtitle: Text(
        subTitle,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      leading: CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
      trailing: Text(formattedTime),
      tileColor: const Color.fromARGB(59, 255, 255, 255),
    );
  }
}
