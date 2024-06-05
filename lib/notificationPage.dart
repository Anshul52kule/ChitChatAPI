import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class notifiPage extends StatefulWidget {
  const notifiPage({super.key});

  @override
  State<notifiPage> createState() => _notifiPageState();
}

class _notifiPageState extends State<notifiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: GoogleFonts.raleway(),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Center(
        child: Text(
          "No Notifications",
          style: GoogleFonts.lato(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}