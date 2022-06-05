import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_shoes_app/screens/products_screen.dart';
import '../widgets/border_box.dart';
import '../widgets/bottom_navbar_item.dart';
import '/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  final screens = [
    const ProductsScreen(),
    const Center(
      child: Text("Bookmarks Screen"),
    ),
    const Center(
      child: Text("Notifications"),
    ),
    const Center(
      child: Text("Profile"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      drawer: Drawer(
        child: Container(
          color: Colors.red,
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: MaterialButton(
          // borderRadius: BorderRadius.circular(8),
          padding: EdgeInsets.zero,

          onPressed: () {
            // Scaffold.of(context).openDrawer();
            drawerKey.currentState!.openDrawer();
          },
          child: BorderBox(
            child: SvgPicture.asset(hamburgerIcon),
          ),
        ),
        title: Image.asset(nikeLogo),
        actions: [
          MaterialButton(
              // borderRadius: BorderRadius.circular(8),
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: BorderBox(child: SvgPicture.asset(cartIcon))),
        ],
      ),
      body: screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 1))
        ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18)),
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavBarItem(
                    isSelected: _selectedIndex == 0,
                    iconPath: 'assets/icons/home.svg',
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    }),
                NavBarItem(
                    isSelected: _selectedIndex == 1,
                    iconPath: 'assets/icons/bookmark.svg',
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    }),
                NavBarItem(
                    isSelected: _selectedIndex == 2,
                    iconPath: 'assets/icons/notifications.svg',
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    }),
                NavBarItem(
                    isSelected: _selectedIndex == 3,
                    iconPath: 'assets/icons/user.svg',
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Row appBar() {
  //   return Row(
  //     children: [
  //       InkWell(
  //         borderRadius: BorderRadius.circular(8),
  //         onTap: () {
  //           // Scaffold.of(context).openDrawer();
  //           drawerKey.currentState!.openDrawer();
  //         },
  //         child: BorderBox(
  //           child: SvgPicture.asset(hamburgerIcon),
  //         ),
  //       ),
  //       const SizedBox(
  //         width: 16,
  //       ),
  // Image.asset(nikeLogo),
  //       const Spacer(),
  // InkWell(
  //     borderRadius: BorderRadius.circular(8),
  //     onTap: () {},
  //     child: BorderBox(child: SvgPicture.asset(cartIcon))),
  //     ],
  //   );
  // }
}
