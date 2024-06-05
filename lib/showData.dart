// CardDetailPage.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardDetailPage extends StatelessWidget {
  final String title;
  final String body;
  final String id;
  final String userId;

  CardDetailPage({
    required this.title,
    required this.body,
    required this.id,
    required this.userId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text(
          "Card Detail",
          style: GoogleFonts.raleway(),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 100, 100, 100),
                borderRadius: BorderRadius.circular(30)),
            margin: EdgeInsets.all(30),
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  id,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Text(
                  userId,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Text(
                  title,
                  style: GoogleFonts.varela(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  body,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
