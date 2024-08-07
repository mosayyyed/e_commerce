import 'package:e_commerce/views/product_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'e-commerce',
      theme: ThemeData(
        textTheme: GoogleFonts.audiowideTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffe5323e)),
        useMaterial3: true,
      ),
      home: const ProductView(),
    );
  }
}
