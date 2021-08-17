// To parse this JSON data, do
//
//     final fruits = fruitsFromJson(jsonString);

import 'dart:convert';

List<Fruits> fruitsFromJson(String str) => List<Fruits>.from(json.decode(str).map((x) => Fruits.fromJson(x)));

String fruitsToJson(List<Fruits> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Fruits {
    Fruits({
        this.id,
        this.name,
        this.price,
        this.description,
        this.imageAsset,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    String name;
    String price;
    String description;
    String imageAsset;
    DateTime createdAt;
    DateTime updatedAt;

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
