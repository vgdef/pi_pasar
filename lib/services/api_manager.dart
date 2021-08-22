import 'dart:convert';

import 'package:http/http.dart' show Client;
import 'package:pi_pasar/constants/strings.dart';
import 'package:pi_pasar/model/fruits.dart';
import 'dart:async';

class API_Manager {
  Future<List<Fruits>> getFruits() async {
    Client client = Client();
    final response = await client.get(Uri.parse(Strings.base_url));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    }
    // print(response.body);
    // var client = await http.Client();
    // var fruitModel = null;

    // try {
    //   var response = await http.get(Uri.parse(Strings.base_url));

    //    if (response.statusCode == 200) {
    //      var jsonString = response.body;
    //      var jsonMap = json.decode(jsonString);

    //     fruitModel = Fruits.fromJson(jsonMap);
    //   }
    // } catch (Exception) {
    //   return fruitModel;
    // }

    // return fruitModel;
    
  
  }
}

