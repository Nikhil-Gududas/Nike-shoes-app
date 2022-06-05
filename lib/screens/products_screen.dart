import 'package:flutter/material.dart';

import 'package:nike_shoes_app/screens/shoe_detail_screen.dart';

import '../constants.dart';
import '../widgets/banner.dart';

import '../widgets/categories_widget.dart';
import '../widgets/shoe_widget.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const MyBanner(),
          Container(
            height: 40,
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: const CategoriesWidget(),
          ),
          Expanded(
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 26),
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              itemCount: shoesData.length,
              itemBuilder: (context, index) {
                final shoe = shoesData[index];
                return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShoeDetailScreen(shoe: shoe),
                          ));
                    },
                    child: ShoeWidget(shoe: shoe));
              },
            ),
          )
        ],
      ),
    );
  }
}
