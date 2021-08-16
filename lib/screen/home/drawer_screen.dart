import 'package:flutter/material.dart';
import 'package:pi_pasar/constants.dart';
import 'package:pi_pasar/screen/cart/cart_screens.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight * 2,
          end: Alignment.bottomLeft,
          colors: [
            kThirdColor,
            kForthColor,
          ],
        ),
      ),
      padding: EdgeInsets.only(
        top: 50,
        bottom: 70,
        left: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Valensya Gabrielle',
                    style: TextStyle(
                      color: kTextColor,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Active Status',
                    style: TextStyle(
                      color: kTextColor,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: drawerItems
                .map(
                  (element) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            CartScreen();
                          },
                          icon: element['icon'],
                          color: kTextColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(element['title'],
                            style: TextStyle(
                                letterSpacing: 1,
                                color: kTextColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20))
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
          Row(
            children: [
              Icon(
                Icons.settings,
                color: kTextColor,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Settings',
                style: TextStyle(
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 2,
                height: 20,
                color: kTextColor,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Log out',
                style:
                    TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
