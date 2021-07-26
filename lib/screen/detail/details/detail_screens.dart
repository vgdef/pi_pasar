import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pi_pasar/model/buah_buahan.dart';
import 'package:pi_pasar/constants.dart';
import 'package:pi_pasar/model/sayur_sayuran.dart';
import 'package:pi_pasar/screen/detail/details/components/body.dart';

var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

class DetailScreens extends StatelessWidget {
  final SayurSayuran needs;

  DetailScreens({this.needs});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: needs.color,
      body: Body(needs: needs),
    );
  }
}
