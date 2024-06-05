// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chat_api/homePage.dart';
import 'package:google_nav_bar/google_nav_bar.dart'; // Import the home page

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        // leading: Icon(
        //   Icons.circle_outlined,
        //   size: 50,
        //   color: Colors.white,

        // ),

        actions: [
          Icon(
            Icons.circle_outlined,
            size: 45,
            color: Colors.yellowAccent,
          ),
          Padding(padding: EdgeInsets.only(left: 60)),
          Icon(
            Icons.close_rounded,
            size: 50,
            color: Colors.redAccent,
          ),
          // Padding(padding: EdgeInsets.only(left: 50)),
          Padding(padding: EdgeInsets.only(right: 60)),
          Icon(
            Icons.crop_square_outlined,
            size: 50,
            color: Colors.blueAccent,
          ),
          Padding(padding: EdgeInsets.only(right: 60)),
          Icon(
            Icons.change_history_outlined,
            size: 50,
            color: Colors.greenAccent,
          ),
          Padding(padding: EdgeInsets.only(right: 60))
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 99, 99, 99),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cheat Chat',
                style: GoogleFonts.lato(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
                cursorColor: const Color.fromARGB(255, 0, 0, 0),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                cursorColor: Colors.black,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the home page
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => homePage()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Login',
                    style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  shadowColor: Color.fromARGB(255, 0, 0, 0),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Color.fromARGB(255, 0, 0, 0),
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
            tabs: [],
          ),
        ),
      ),
    );
  }
}
