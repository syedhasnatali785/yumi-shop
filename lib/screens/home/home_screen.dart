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
      appBar: AppBar(
        backgroundColor: Color(0xfffd4d5d7),
        title: Text("YUMI SHOP"),
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(FontAwesomeIcons.search),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Container(
              height: 50,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(FontAwesomeIcons.bell),
            ),
          ),
        ],
      ),
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
