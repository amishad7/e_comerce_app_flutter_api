import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroDuction extends StatelessWidget {
  const IntroDuction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          dotsDecorator: DotsDecorator(
            activeColor: Colors.purple.shade300,
            color: Colors.purple.shade50,
          ),
          back: const Text("Back"),
          next: const Text("Next"),
          done: const Text("Done"),
          allowImplicitScrolling: true,
          showBackButton: true,
          onDone: () {
            Navigator.pushReplacementNamed(context, 'home');
          },
          pages: [
            PageViewModel(
              decoration: const PageDecoration(pageColor: Colors.white),
              titleWidget: Text(
                "Welcome To Laza!",
                style: GoogleFonts.aclonica(
                  color: Colors.purpleAccent.shade200,
                  fontSize: 20,
                ),
              ),
              image: Image.asset('assets/introduction/first.png'),
              bodyWidget: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 78.0),
                child: Text(
                  "Purchase  your favourites Products and get a best offers and sales.",
                  style: GoogleFonts.montserratAlternates(
                    color: Colors.purple.shade300,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            PageViewModel(
              decoration: const PageDecoration(pageColor: Colors.white),
              titleWidget: Text(
                "Find your desire Products!",
                style: GoogleFonts.aclonica(
                  color: Colors.purpleAccent.shade200,
                  fontSize: 20,
                ),
              ),
              image: Image.asset('assets/introduction/sec.png'),
              bodyWidget: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 78.0),
                child: Text(
                  "Every products with less price",
                  style: GoogleFonts.montserratAlternates(
                    color: Colors.purple.shade300,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            PageViewModel(
              decoration: const PageDecoration(pageColor: Colors.white),
              titleWidget: Text(
                "Online Shopping",
                style: GoogleFonts.aclonica(
                  color: Colors.purpleAccent.shade200,
                  fontSize: 20,
                ),
              ),
              bodyWidget: Text(
                "Enjoy shopping!!",
                style: GoogleFonts.montserratAlternates(
                  color: Colors.purple.shade300,
                  fontSize: 17,
                ),
              ),
              image: Image.asset('assets/introduction/SHOPING.PNG'),
            ),
          ],
        ),
      ),
    );
  }
}
