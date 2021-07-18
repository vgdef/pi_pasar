import 'package:flutter/material.dart';
import 'package:pi_pasar/constants.dart';
import 'package:pi_pasar/screen/home/components/search_box.dart';
import 'package:pi_pasar/screen/home/buah.dart';
import 'package:pi_pasar/screen/home/sayuran.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.only(left: kDefaultPadding / 2),
          child: Icon(
            Icons.short_text_rounded,
            color: kTextColor,
            size: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBox(),
            Sayuran(),
            Buah(),
          ],
        ),
      ),
    );
  }
}
