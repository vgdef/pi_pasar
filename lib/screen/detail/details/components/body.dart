import 'package:flutter/material.dart';
import 'package:pi_pasar/constants.dart';
import 'package:pi_pasar/model/sayur_sayuran.dart';

class Body extends StatelessWidget {
  final SayurSayuran needs;

  Body({this.needs});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: kDefaultPadding,
              left: kDefaultPadding,
              right: kDefaultPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                FavoriteButton(),
              ],
            ),
          ),
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.4),
                  padding: EdgeInsets.only(
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                    top: size.height * 0.12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: kTextColor.withOpacity(0.2),
                        offset: Offset(5, 5),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        needs.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 30.0,
                          fontFamily: 'Staatliches',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.monetization_on),
                      SizedBox(height: 8.0),
                      Text(needs.price),
                      Text(
                        needs.description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Oxygen',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 600,
                    left: 100,
                    right: kDefaultPadding,
                  ),
                  child: SizedBox(
                    height: 50,
                    width: 500,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      color: Colors.green,
                      onPressed: () {},
                      child: Text(
                        "Buy Now".toUpperCase(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 600,
                    left: 30,
                    right: kDefaultPadding,
                  ),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.green,
                    size: 45,
                  ),
                ),
                Image.asset(needs.imageAsset),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
