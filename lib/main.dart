import 'package:e_comerce_app_flutter_api/App/Homeview/view/homeview.dart';
import 'package:flutter/material.dart';

import 'App/firstview/view/introductionview.dart';
import 'App/firstview/view/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ecommerce App",
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const FirstView(),
        'intro': (context) => const IntroDuction(),
        'home': (context) => const Home(),
      },
    );
  }
}
