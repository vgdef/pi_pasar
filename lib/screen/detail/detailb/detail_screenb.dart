import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pi_pasar/model/fruits.dart';
import 'package:pi_pasar/screen/detail/detailb/components/body.dart';

var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

class DetailScreenb extends StatelessWidget {
  final BuahBuahan need;

  DetailScreenb({this.need});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: need.colors,
      body: Body(need: need),
    );
  }
}
