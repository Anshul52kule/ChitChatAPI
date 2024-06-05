import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class msgPage extends StatefulWidget {
  const msgPage({super.key});

  @override
  State<msgPage> createState() => _msgPageState();
}

class _msgPageState extends State<msgPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Messages",
          style: GoogleFonts.raleway(),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Center(
        child: Text(
          "No Message",
          style: GoogleFonts.lato(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
