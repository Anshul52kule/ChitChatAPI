import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class morePage extends StatefulWidget {
  const morePage({super.key});

  @override
  State<morePage> createState() => _morePageState();
}

class _morePageState extends State<morePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "More",
          style: GoogleFonts.raleway(),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Center(
        child: Text(
          "Work in Progress",
          style: GoogleFonts.lato(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}