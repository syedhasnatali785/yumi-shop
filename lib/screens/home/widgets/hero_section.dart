import 'package:flutter/cupertino.dart';

import '../../../widgets/buttons.dart';

class HeroSection extends StatelessWidget {
  HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      height: MediaQuery.of(context).size.height * 0.23,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xfffd4d5d7)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "MEET THE NEW \n AUTUMN\n COLLECTION",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * .025,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CButtons(),
            ],
          ),
          Expanded(
            child: Image.network(
              'https://static.vecteezy.com/system/resources/previews/035/197/725/non_2x/cosmetics-products-transparent-background-fashion-outfit-profucts-png.png',
            ),
          ),
        ],
      ),
    );
  }
}
