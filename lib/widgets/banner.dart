import 'dart:math' as math;
import 'package:flutter/material.dart';

import '../constants.dart';

class MyBanner extends StatelessWidget {
  const MyBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 202,
      child: Stack(children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 26),
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
              color: cardColor, borderRadius: BorderRadius.circular(18)),
        ),
        Positioned(
          right: -10,
          bottom: 35,
          // bottom: 25,
          top: 35,
          child: Transform.rotate(
            angle: -2 * (math.pi / 12.0),
            child: Image.asset(greenShoe, height: 130),
          ),
        ),
        Positioned(
          top: 50,
          left: 46,
          child: RichText(
              text: const TextSpan(children: [
            TextSpan(
              text: '20% Discount',
              style: TextStyle(
                  color: Color(0XFF202727),
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            TextSpan(
              text: '\non your first purchase',
              style: TextStyle(
                color: Color(0XFF202727),
              ),
            )
          ])),
        ),
        Positioned(
          top: 115,
          left: 46,
          child: MaterialButton(
            onPressed: () {},
            child: const Text(
              "Shop now",
            ),
            color: Colors.black,
            textColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          ),
        )
      ]),
    );
  }
}
