import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:readmore/readmore.dart';
import 'package:yumishop/widgets/buttons.dart';
import 'package:yumishop/widgets/image_slider.dart';
import 'package:yumishop/widgets/tags.dart';

class ProductDetailScreen extends StatelessWidget {
  ProductDetailScreen({
    super.key,
    required this.ptitle,
    required this.pimage,
    required this.price,
    required this.tags,
    required this.description,
    required this.rating,
  });
  String ptitle, pimage, price, rating, description, tags;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageSlidingWidget(imageurl: pimage,),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CTags(tagslabel: tags,),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 18),
                          SizedBox(width: 5),
                          Text("${rating}"),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 15),

                  Text(
                    ptitle,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),

                  SizedBox(height: 8),

                  ReadMoreText(
                    description,
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                    trimLines: 4,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Read More",
                    trimExpandedText: "Read Less",
                    lessStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    moreStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Final price",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "\$ ${price}",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              CButtons(
                onTapCbuttons: (){},
                cbtitle: 'Add to Cart',
                cbicon: FontAwesomeIcons.cartShopping,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
