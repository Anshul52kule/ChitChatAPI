import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class activityPage extends StatefulWidget {
  const activityPage({super.key});

  @override
  State<activityPage> createState() => _activityPageState();
}

class _activityPageState extends State<activityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Activity",
          style: GoogleFonts.raleway(),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Center(
        child: Text(
          "No Activity",
          style: GoogleFonts.lato(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
