import 'dart:math' as math;
import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/shoe.dart';

class ShoeWidget extends StatelessWidget {
  const ShoeWidget({
    Key? key,
    required this.shoe,
  }) : super(key: key);
  final Shoe shoe;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                bottom: 16,
              ),
              alignment: Alignment.center,
              child: Hero(
                tag: shoe.id,
                child: Transform.rotate(
                  angle: -math.pi / 8.0,
                  child: Image.asset(
                    shoe.imagePath,
                    fit: BoxFit.fill,
                    // height: 70,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              shoe.title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$${shoe.price}',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color(0XFF374957).withOpacity(0.2),
                      )),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Color(0XFF202727),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
