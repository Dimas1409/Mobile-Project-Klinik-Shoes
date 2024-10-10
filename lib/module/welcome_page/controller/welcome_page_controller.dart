import 'package:flutter/material.dart';
import 'package:klinik_shoes_project/model/welcome_page_model/welcome_page_model.dart';

class WelcomeController {
  final WelcomeModel model = WelcomeModel();

  Widget createButton(String text) {
    return Container(
      width: 350,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 103, vertical: 8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 5, color: Color(0xFFA9EEE9)),
          borderRadius: BorderRadius.circular(30),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x7F000000),
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Sora',
              fontWeight: FontWeight.w600,
              height: 0.04,
            ),
          ),
        ],
      ),
    );
  }
}
