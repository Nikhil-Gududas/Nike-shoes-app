import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_shoes_app/widgets/size_widget.dart';

import '../constants.dart';
import '../models/shoe.dart';
import '../widgets/border_box.dart';

class ShoeDetailScreen extends StatelessWidget {
  final Shoe shoe;
  const ShoeDetailScreen({Key? key, required this.shoe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          // alignment: Alignment.center,
          textDirection: TextDirection.rtl,
          fit: StackFit.loose,
          clipBehavior: Clip.hardEdge,
          children: [
            Padding(
              padding: horizontalPadding.add(const EdgeInsets.only(top: 10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () {
                      // Scaffold.of(context).openDrawer();
                    },
                    // ignore: prefer_const_constructors
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const BorderBox(
                          child: Icon(
                        Icons.arrow_back,
                        size: 20,
                      )),
                    ),
                  ),
                  const Text(
                    'Air Max 200 SE',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: () {},
                      child: BorderBox(child: SvgPicture.asset(cartIcon))),
                ],
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 150),
              alignment: Alignment.topCenter,
              child: RotatedBox(
                quarterTurns: 1,
                child: Text(
                  "NIKE",
                  style: GoogleFonts.poppins(
                      fontSize: 160,
                      letterSpacing: 5,
                      color: Colors.black12,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 50,
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.8,
                child: Hero(
                  tag: shoe.id,
                  child: Transform.rotate(
                    angle: -math.pi / 5.0,
                    child: Image.asset(
                      shoe.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 190,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Size",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    height: 350,
                    width: 70,
                    child: const SizeWidget(),
                  )
                ],
              ),
            ),
            Positioned(
              right: 20,
              top: 215,
              child: blackContainer(
                SvgPicture.asset(
                  'assets/icons/bookmark.svg',
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              top: 350,
              right: 20,
              child: Column(
                children: [
                  const Text(
                    "Color",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  blackContainer(const DecoratedBox(
                      decoration: BoxDecoration(color: Colors.red))),
                  const SizedBox(
                    height: 16,
                  ),
                  blackContainer(const DecoratedBox(
                      decoration: BoxDecoration(color: Colors.indigo))),
                ],
              ),
            ),
            Positioned(
                left: 20,
                bottom: 240,
                child: Text(
                  '\$ ${shoe.price}',
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold),
                )),
            const Positioned(
                bottom: 230,
                left: 140,
                child: Text(
                  'Swipe down to add',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                )),
            Positioned(
              bottom: 0,
              child: Container(
                  width: _width,
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('assets/images/cart_box.png')),
            ),
            Positioned(
              bottom: 120,
              child: Container(
                alignment: Alignment.center,
                width: _width,
                child: Container(
                  height: 100,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.black),
                  child: Column(
                    children: [
                      const Spacer(),
                      SvgPicture.asset(
                        cartIcon,
                        color: Colors.white,
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        'assets/icons/arrow_down.svg',
                        color: Colors.white.withOpacity(0.4),
                      ),
                      SvgPicture.asset(
                        'assets/icons/arrow_down.svg',
                        color: Colors.white.withOpacity(0.6),
                      ),
                      SvgPicture.asset(
                        'assets/icons/arrow_down.svg',
                        color: Colors.white,
                      ),
                      const Spacer()
                    ],
                  ),
                ),
              ),
            ),
            // Container(
            //   height: _height,
            //   width: _width,
            //   child: GestureDetector(
            //     onPanUpdate: (details) {
            //       print(details.delta.dx);
            //       if (details.delta.dx > 2) {
            //         Navigator.pop(context);
            //       }
            //     },
            //   ),
            // )
          ],
        ),
      )),
    );
  }

  Container blackContainer(Widget child) {
    return Container(
      height: 35,
      width: 35,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          // color: _selectedIndex == index ? Colors.black : null,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(12)),
      child: child,
    );
  }
}
