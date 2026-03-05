import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CButtons extends StatelessWidget {
  CButtons({
    super.key,
    required this.cbtitle,
    required this.cbicon,
    required this.onTapCbuttons,
  });
  String cbtitle;
  IconData cbicon;
  VoidCallback onTapCbuttons;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapCbuttons,
      child: Container(
        height: 45,
        width: 200,
        decoration: BoxDecoration(
          color: Color(0xff2e2e2e),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  cbtitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(.4),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 21,
                  child: Icon(cbicon),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Container(height: 30,width: 30,decoration:BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(45)),child: ,)
