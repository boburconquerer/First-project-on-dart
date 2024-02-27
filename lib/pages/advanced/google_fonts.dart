import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class GoogleFontsWidget extends StatelessWidget {
  const GoogleFontsWidget({super.key});
  static const String id ="GoogleFonts";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Fonts"),
      ),
      body: Center(
        child: Text(
          "This is Google Fonts by Boburbek",
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),

      ),
    );
  }
}
