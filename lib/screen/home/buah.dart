import 'package:flutter/material.dart';
import 'package:pi_pasar/buah_buahan.dart';
import 'package:pi_pasar/constants.dart';
import 'package:pi_pasar/screen/detail/detail_screenb.dart';

class Buah extends StatelessWidget {
  Widget _buildNeeds(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    BuahBuahan buahBuahann = buahBuahan[index];

    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailScreenb(need: buahBuahann);
        }));
      },
      child: Padding(
        padding: EdgeInsets.all(kDefaultPadding / 2),
        child: Container(
          width: size.width * 0.3,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Image.asset(
                  buahBuahann.imageAsset,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        buahBuahann.name,
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Text(
            'Buah ',
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
              return _buildNeeds(context, index);
            },
          ),
        )
      ],
    );
  }
}
