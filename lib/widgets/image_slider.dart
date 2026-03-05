import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlidingWidget extends StatefulWidget {
  String imageurl =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1HTaTDhNOPHF0zkO2XmYRl-3H5suWz8-sEw&s';
  ImageSlidingWidget({super.key, required this.imageurl});
  @override
  State<ImageSlidingWidget> createState() => _ImageSlidingWidgetState();
}

class _ImageSlidingWidgetState extends State<ImageSlidingWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .57,
      child: Stack(
        children: [
          /// IMAGE SLIDER
          PageView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Image.network(
                widget.imageurl,
                width: double.infinity,
                fit: BoxFit.cover,
              );
            },
          ),
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Icon(FontAwesomeIcons.arrowLeft, size: 22),
              ),
            ),
          ),
          Positioned(
            top: 40,
            right: 11,
            child: IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Icon(FontAwesomeIcons.heart, size: 22),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
