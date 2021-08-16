import 'package:flutter/material.dart';
import 'package:pi_pasar/constants.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        top: kDefaultPadding,
      ),
      child: Material(
        elevation: 8.0,
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              contentPadding: EdgeInsets.symmetric(
                vertical: kDefaultPadding,
                horizontal: kDefaultPadding,
              ),
              fillColor: kTextColor,
              hintText: 'Search Here ...',
              suffixIcon: Icon(
                Icons.search_rounded,
                size: 25,
                color: kSecondColor,
              )),
        ),
      ),
    );
  }
}
