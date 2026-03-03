import 'package:flutter/material.dart';

class ImageSlidingWidget extends StatelessWidget {
  const ImageSlidingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .55,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, index) {
                return ClipRRect(
                  child: Image.network(
                    'https://www.fairindigo.com/cdn/shop/files/CL_02600_White_SS24_7522.jpg?v=1739738264&width=360',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Text(
                        "Limited Edition" + index.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
