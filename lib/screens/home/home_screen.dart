import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yumishop/screens/home/widgets/category_section.dart';
import 'package:yumishop/screens/home/widgets/hero_section.dart';
import 'package:yumishop/screens/home/widgets/new_arrival_section.dart';
import 'package:yumishop/widgets/buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroSection(),
            //second body:
            CategorySection(),
            NewArrivalSection(),
          ],
        ),
      ),
    );
  }
}
