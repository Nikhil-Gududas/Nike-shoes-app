import 'package:flutter/material.dart';

import '../constants.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: EdgeInsets.only(right: 8, left: index == 0 ? 20 : 0),
            decoration: BoxDecoration(
                color: _selectedIndex == index ? Colors.black : null,
                borderRadius: BorderRadius.circular(18)),
            child: Center(
              child: Text(
                categories[index],
                style: TextStyle(
                    color:
                        _selectedIndex == index ? Colors.white : Colors.grey),
              ),
            ),
          ),
        );
      },
    );
  }
}
