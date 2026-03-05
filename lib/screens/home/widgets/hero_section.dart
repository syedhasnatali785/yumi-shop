import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../widgets/buttons.dart';

class HeroSection extends StatelessWidget {
  HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      height: MediaQuery.of(context).size.height * 0.3,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xffd4d5d7)),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * .09),
                    Text(
                      "MEET THE NEW\nAUTUMN\nCOLLECTION",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .025,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .02),

                    //button
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 25,
                                  ),
                                  child: Text(
                                    'Shop Now',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 21,
                                  child: Transform.rotate(
                                    angle: 5.5,
                                    child: Icon(
                                      FontAwesomeIcons.arrowRight,
                                      color: Colors.black,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(

                child: Column(mainAxisAlignment: MainAxisAlignment.end,children: [Image.network(
                  'https://static.vecteezy.com/system/resources/previews/035/197/725/non_2x/cosmetics-products-transparent-background-fashion-outfit-profucts-png.png',
                  fit: BoxFit.contain,height: 190,
                ),],)
              ),
            ],
          ),
          Positioned(
            top: 15,
            left: -8,
            child: IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 25,

                backgroundColor: Colors.white,
                child: Icon(FontAwesomeIcons.search, size: 20),
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: -7,
            child: IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Icon(FontAwesomeIcons.bell, size: 22),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
