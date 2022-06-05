import 'package:flutter/material.dart';

class BorderBox extends StatelessWidget {
  final Widget child;
  const BorderBox({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: const Color(0XFF374957).withOpacity(0.2),
            )),
        child: child);
  }
}
