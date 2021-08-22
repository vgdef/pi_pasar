import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Fruits> fetchFruit() async {
  final response = await http
      .get(Uri.parse('http://127.0.0.1:3000'),
      headers: {
        "Accept": "application/json",
        "Access-Control-Allow-Origin":"*"
      });

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Fruits.fromJson(jsonDecode(response.body)[0]);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Fruits {
    final int id;
    final String name;
    final String price;
    final String description;
    final String imageAsset;
    final DateTime createdAt;
    final DateTime updatedAt;

    Fruits({
        this.id,
        this.name,
        this.price,
        this.description,
        this.imageAsset,
        this.createdAt,
        this.updatedAt,
    });



    factory Fruits.fromJson(Map<String, dynamic> json) => Fruits(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        imageAsset: json["imageAsset"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "description": description,
        "imageAsset": imageAsset,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

void main() => runApp(const Fruit());

class Fruit extends StatefulWidget {
  const Fruit({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Fruit> {
  Future<Fruits> futureFruit;

  // get futureFruit => null;

  @override
  void initState() {
    super.initState();
    futureFruit = fetchFruit();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Fruits>(
            future: futureFruit,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.name);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}