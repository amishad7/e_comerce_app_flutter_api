import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, 'intro');
    });

    return Scaffold(
      backgroundColor: Color(0xff9775FA),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Laza",
              style: GoogleFonts.aboreto(
                color: Colors.white,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              endIndent: 130,
              indent: 150,
              thickness: 4,
              color: Colors.white,
            ),
            SizedBox(height: 56),
          ],
        ),
      ),
    );
  }
}
