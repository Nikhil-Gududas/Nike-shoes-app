import 'package:flutter/cupertino.dart';
import 'models/shoe.dart';

const String greenShoe = "assets/images/Green1.png";
const String redShoe = "assets/images/red1.png";
const String shoe1 = "assets/images/Shoe1.png";
const String topPng = "assets/images/toppng.png";
const String yellowShoe = "assets/images/YellowShoe.png";
const String shoe = "assets/images/shoe-.png";
const String nikeLogo = "assets/icons/nike.png";
const String hamburgerIcon = "assets/icons/hamburger.svg";
const String cartIcon = "assets/icons/cart.svg";

const Color cardColor = Color(0XFFEFEFEF);
const Color categorieColor = Color(0XFF9C9C9C);
const horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
List<Shoe> shoesData = const [
  Shoe(id: '101', title: 'Air Max 97', price: 20.99, imagePath: yellowShoe),
  Shoe(id: '102', title: 'React Presto', price: 25.99, imagePath: redShoe),
  Shoe(id: '103', title: 'Air Max 90 SE', price: 22.99, imagePath: topPng),
  Shoe(id: '104', title: 'ZoomX Streakfly', price: 29.99, imagePath: shoe1),
  // Shoe(title: 'ZoomX Streakfly', price: 29.99, imagePath: shoe),
];

List<String> categories = [
  'All',
  'Running',
  'Sneakers',
  'Formal',
  'Casual',
];
List<String> sizes = [
  'UK 6',
  'UK 7',
  'UK 8',
  'UK 9',
];
