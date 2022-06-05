import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBarItem extends StatelessWidget {
  final bool isSelected;
  final String iconPath;
  final VoidCallback onPressed;
  const NavBarItem(
      {Key? key,
      required this.isSelected,
      required this.iconPath,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        // color: Colors.red,
        width: (MediaQuery.of(context).size.width / 4) - 10,
        child: Column(
          mainAxisAlignment:
              isSelected ? MainAxisAlignment.start : MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Visibility(
              visible: isSelected,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: SvgPicture.asset(
                  'assets/icons/indicator.svg',
                ),
              ),
            ),
            SvgPicture.asset(
              iconPath,
              height: 28,
              color: isSelected ? Colors.black : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
