import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kPrimaryColor = Color(0xFF52734d);
const kSecondColor = Color(0xFF91c788);
const kSecondLightColor = Color(0xffbdffb1);
const kThirdColor = Color(0xFFfeffde);
const kForthColor = Color(0xFFffc93c);
const kFifthColor = Color(0xFFC64756);
const kTextColor = Color(0xFF393232);
const kSixthColor = Colors.red;
const kYellowColor = Colors.yellow;

const double kDefaultPadding = 20.0;

List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];
List<Map> drawerItems = [
  {
    'icon': FontAwesomeIcons.shoppingBasket,
    'title': 'Basket',
  },
  {
    'icon': Icons.favorite_border_outlined,
    'title': 'Favorites',
  },
];
