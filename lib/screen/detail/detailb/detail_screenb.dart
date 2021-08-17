import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pi_pasar/model/fruits.dart';
import 'package:pi_pasar/screen/detail/detailb/components/body.dart';
import 'package:pi_pasar/constants.dart';

var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

class DetailScreenb extends StatelessWidget {
  final List<Fruits> need;

  DetailScreenb({Key key, this.need});

  @override
  Widget build(BuildContext context) {
  return ListView.builder(
    // itemCount: need.length,
    itemBuilder: (context, index) {

  });
    
  }
}
