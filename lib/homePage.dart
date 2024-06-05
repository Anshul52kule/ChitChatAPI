// homePage.dart
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'dart:convert';
import 'dart:math';
import 'package:chat_api/activityPage.dart';
import 'package:chat_api/messagePage.dart';
import 'package:chat_api/morePage.dart';
import 'package:chat_api/notificationPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:http/http.dart' as http;
import 'CardDetailPage.dart';
import 'showData.dart'; // Import the CardDetailPage

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<dynamic> posts = [];
  List<dynamic> images = [];

  @override
  void initState() {
    super.initState();
    getPosts();
    getImages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        excludeHeaderSemantics: true,
        toolbarHeight: 60,
        title: Text(
          "Cheat Chat",
          style: GoogleFonts.raleway(
              color: const Color.fromARGB(255, 255, 255, 255), fontSize: 30),
        ),
        backgroundColor: Colors.black,
        // shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.only(
        //         bottomLeft: Radius.circular(30),
        //         bottomRight: Radius.circular(30))),
        elevation: 8.0,
        shadowColor: Colors.black,
        // leading: Icon(
        //   Icons.search,
        //   color: Colors.white,
        // ),
        actions: [
          Icon(
            Icons.motion_photos_on_outlined,
            color: Colors.white,
            size: 30,
            // shadows: [
            //   BoxShadow(
            //     color: Color.fromARGB(255, 255, 0, 0),
            //     offset: Offset(0, 0),
            //     spreadRadius: 20,
            //     blurRadius: 10,
            //     blurStyle: BlurStyle.solid,
            //   )
            // ],
          ),
          Padding(padding: EdgeInsets.only(right: 30)),
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://cdn.dribbble.com/users/458522/screenshots/3230273/media/acf3e38fa5dd30d03b515e145b901cd2.jpg"),
          ),
          Padding(padding: EdgeInsets.only(right: 20)),
        ],
      ),
      body: Container(
        // margin: EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 123, 123, 123),
          // borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            final post = posts[index];
            final image = images[index];
            final imageUri = image['download_url'];
            final int userId = post['userId'];
            final id = post['id'];
            final title = post['title'];
            final body = post['body'];

            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CardDetailPage(
                      title: title,
                      body: body,
                      id: id.toString(),
                      userId: userId.toString(),
                      // imageUrl: imageUri,
                    ),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 180, 180, 180),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(-5, 5),
                      blurRadius: 12.0,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        title,
                        style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontSize: 30,
                          height: 0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        body,
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Text(id.toString()),
                    // ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: NetworkImage(imageUri),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Color.fromARGB(255, 255, 255, 255),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(65, 0, 0, 0),
              offset: Offset(0, 10),
              blurRadius: 15,
              spreadRadius: 2,
            ),
          ],
        ),
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        padding: EdgeInsets.all(5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: GNav(
            tabs: [
              GButton(
                icon: Icons.circle_outlined,
                iconColor: const Color.fromARGB(255, 0, 0, 0),
                text: "Home",
              ),
              GButton(
                icon: Icons.crop_square_outlined,
                iconColor: const Color.fromARGB(255, 0, 0, 0),
                text: "Message",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const msgPage()),
                  );
                },
              ),
              GButton(
                icon: Icons.blur_on_rounded,
                iconColor: const Color.fromARGB(255, 0, 0, 0),
                text: "Activity",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const activityPage()),
                  );
                },
              ),
              GButton(
                icon: Icons.favorite_border_outlined,
                iconColor: const Color.fromARGB(255, 0, 0, 0),
                text: "Notifications",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const notifiPage()),
                  );
                },
              ),
              GButton(
                icon: Icons.change_history_outlined,
                iconColor: const Color.fromARGB(255, 0, 0, 0),
                text: "More",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const morePage()),
                  );
                },
              ),
            ],
            padding: EdgeInsets.all(15),
            gap: 5,
            // backgroundColor: Color.fromARGB(0, 255, 255, 255),
            color: Colors.black38,
            tabShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0, 0),
                spreadRadius: -5,
                blurRadius: 10,
                blurStyle: BlurStyle.outer,
              )
            ],
            activeColor: Colors.white,
            tabBackgroundColor: Colors.black,
            // rippleColor: const Color.fromARGB(255, 255, 0, 0),
            tabMargin: EdgeInsets.all(0),
          ),
        ),
      ),
    );
  }

  double randomWidth() {
    final x = Random().nextDouble() * 200;
    return x;
  }

  double randomHeight() {
    final x = Random().nextDouble() * 200 + 100;
    return x;
  }

  void getPosts() async {
    const url = "https://jsonplaceholder.typicode.com/posts";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    print("users fetched");

    setState(() {
      posts = json;
    });
  }

  void getImages() async {
    const url = "https://picsum.photos/v2/list?page=2&limit=100";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    print("users images fetched");

    setState(() {
      images = json;
    });
  }
}
