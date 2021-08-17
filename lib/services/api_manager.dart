import 'package:http/http.dart' as http;
import 'package:pi_pasar/constants/strings.dart';
import 'package:pi_pasar/model/fruits.dart';
import 'dart:async';
import 'dart:convert';

class API_Manager {
  Future<Fruits> getFruits() async {
    // var client = await http.Client();
    var fruitModel = null;

    try {
      var response = await http.get(Uri.parse(Strings.base_url));

       if (response.statusCode == 200) {
         var jsonString = response.body;
         var jsonMap = json.decode(jsonString);

        fruitModel = Fruits.fromJson(jsonMap);
      }
    } catch (Exception) {
      return fruitModel;
    }

    return fruitModel;
    
  
  }
}

