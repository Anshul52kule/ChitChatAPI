// ignore_for_file: unused_import

import 'package:chat_api/activityPage.dart';
import 'package:chat_api/messagePage.dart';
import 'package:chat_api/morePage.dart';
import 'package:chat_api/navBar.dart';
import 'package:chat_api/notificationPage.dart';
import 'package:flutter/material.dart';
import 'package:chat_api/homePage.dart';
import 'package:chat_api/loginPage.dart';
import 'package:google_nav_bar/google_nav_bar.dart'; // Import the login page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // Add your app's theme settings here
          ),
      initialRoute: '/home', // Set initial route to login
      routes: {
        '/login': (context) => LoginPage(), // Define route for login page
        '/home': (context) => homePage(), // Define route for home page
        '/msg': (context) => msgPage(),
      
        
      },
    );
  }
}
