import 'package:flutter/material.dart';
import 'package:pi_pasar/model/fruits.dart';
import 'package:pi_pasar/constants.dart';
import 'package:pi_pasar/screen/detail/detailb/detail_screenb.dart';
import 'package:pi_pasar/services/api_manager.dart';


class Fruit extends StatefulWidget {
  const Fruit({Key key}) : super(key: key);
  @override
  _FruitState createState() => _FruitState();
}

class _FruitState extends State<Fruit> {
  Future<Fruits> _fruitModel;
  List <Fruits>__fruitModel;


  @override
  void initState() {
    _fruitModel = API_Manager().getFruits();
    super.initState();
   
  }

  // @override
  Widget _buildNeeds(BuildContext context, int index) {
    // Size size = MediaQuery.of(context).size;
    // Fruits buahBuahann = ;

    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailScreenb(need: __fruitModel);
        }));
      },
      child: Padding(
        padding: EdgeInsets.all(kDefaultPadding / 2),
        child: FutureBuilder<Fruits>(
          future: _fruitModel,
          builder: (context, snapshot) {
           if (snapshot.hasData) {
              return ListView.builder(itemBuilder: (context, index){
                return Container(
                  height: 100,
                  color: Colors.red,
                );
            });
           } else 
            return Center(child: CircularProgressIndicator());
          },

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
            'Buah',
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
            // itemCount: __fruitModel.length,
            itemBuilder: (context, index) {
              return _buildNeeds(context, index);
            },
          ),
        )
      ],
    );
  }
}
