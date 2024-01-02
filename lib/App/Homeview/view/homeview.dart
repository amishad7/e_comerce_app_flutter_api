import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 90, top: 0),
                child: Transform.translate(
                  offset: const Offset(-120, 6),
                  child: Text(
                    "Hello there!",
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
              Container(
                height: 170,
                width: 360,
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.lightGreenAccent.shade100,
                  borderRadius: BorderRadius.circular(23),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://ae04.alicdn.com/kf/U014f3312f5624975bd7511f209b1b477v/Nike.jpg',
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Transform.translate(
                      offset: Offset(200, 34),
                      child: Text(
                        "30% OFF",
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(),
                      child: Text("Grab it!"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
