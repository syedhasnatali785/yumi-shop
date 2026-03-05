import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CTags extends StatelessWidget {
  CTags({super.key,required this.tagslabel});
String tagslabel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: MediaQuery.of(context).size.width * .7,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(1),
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(tagslabel, style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
