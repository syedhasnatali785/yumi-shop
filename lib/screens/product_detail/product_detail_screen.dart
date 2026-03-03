import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:yumishop/widgets/image_slider.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: Icon(FontAwesomeIcons.arrowLeft),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 35,
              child: Icon(FontAwesomeIcons.heart),
            ),
          ),
        ],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start,children: [ImageSlidingWidget()]),
    );
  }
}
