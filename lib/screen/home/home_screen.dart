import 'package:flutter/material.dart';
import 'package:pi_pasar/constants.dart';
import 'package:pi_pasar/screen/home/category.dart';
import 'package:pi_pasar/screen/home/components/search_box.dart';
import 'package:pi_pasar/screen/home/fruit.dart';
import 'package:pi_pasar/screen/home/vegetable.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)
        ..rotateY(isDrawerOpen ? -0.5 : 0),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            isDrawerOpen
                ? IconButton(
                    padding: EdgeInsets.only(
                      left: kDefaultPadding * 2,
                      top: kDefaultPadding * 2,
                    ),
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      setState(() {
                        xOffset = 0;
                        yOffset = 0;
                        scaleFactor = 1;
                        isDrawerOpen = false;
                      });
                    },
                  )
                : IconButton(
                    padding: EdgeInsets.only(
                      left: kDefaultPadding,
                      top: kDefaultPadding * 2,
                    ),
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      setState(() {
                        xOffset = 230;
                        yOffset = 150;
                        scaleFactor = 0.6;
                        isDrawerOpen = true;
                      });
                    },
                  ),
            SearchBox(),
            Category(),
            Vegetable(),
            Fruit(),
          ],
        ),
      ),
    );
  }
}
