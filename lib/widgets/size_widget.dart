import 'package:flutter/material.dart';

import '../constants.dart';

class SizeWidget extends StatefulWidget {
  const SizeWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SizeWidget> createState() => _SizeWidgetState();
}

class _SizeWidgetState extends State<SizeWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: sizes.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 20, top: index == 0 ? 10 : 0),
            decoration: BoxDecoration(
                // color: _selectedIndex == index ? Colors.black : null,
                border: Border.all(
                  color: _selectedIndex == index
                      ? Colors.black
                      : const Color(0XFF374957).withOpacity(0.2),
                ),
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                sizes[index],
                style: TextStyle(
                    color:
                        _selectedIndex == index ? Colors.black : Colors.black87,
                    fontSize: 16,
                    fontWeight: _selectedIndex == index
                        ? FontWeight.bold
                        : FontWeight.normal),
              ),
            ),
          ),
        );
      },
    );
  }
}
