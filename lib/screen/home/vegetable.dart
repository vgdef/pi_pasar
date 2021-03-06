import 'package:flutter/material.dart';
import 'package:pi_pasar/constants.dart';
import 'package:pi_pasar/model/vegetables.dart';
import 'package:pi_pasar/screen/detail/details/detail_screens.dart';

class Vegetable extends StatelessWidget {
  Widget _buildNeeds(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    SayurSayuran sayurSayurann = sayurSayuran[index];

    return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailScreens(needs: sayurSayurann);
          }));
        },
        child: Padding(
          padding: EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding / 2,
            bottom: kDefaultPadding,
          ),
          child: Container(
            width: size.width * 0.50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: kTextColor.withOpacity(0.2),
                  offset: Offset(5, 5),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(sayurSayurann.imageAsset),
                  ),
                  Expanded(
                    flex: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            sayurSayurann.name,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            sayurSayurann.price,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
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
            'Sayuran ',
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
            itemCount: sayurSayuran.length,
            itemBuilder: (context, index) {
              return _buildNeeds(context, index);
            },
          ),
        ),
      ],
    );
  }
}
