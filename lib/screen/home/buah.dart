import 'package:flutter/material.dart';
import 'package:pi_pasar/buah_buahan.dart';
import 'package:pi_pasar/constants.dart';

class Buah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Text(
            'Buah :',
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: size.height * 0.4,
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: buahBuahan.length,
              itemBuilder: (context, index) {
                // return _buildNeeds(context, index);
              }),
        )
      ],
    );
  }
}
