import 'package:flutter/rendering.dart';
import 'package:pi_pasar/constants.dart';

class BuahBuahan {
  String name;
  String price;
  final Color colors;
  String description;
  String imageAsset;

  BuahBuahan(
      {this.name, this.price, this.colors, this.description, this.imageAsset});
}

var buahBuahan = [
  BuahBuahan(
    name: 'Apel',
    price: 'RP. 10.000/kg',
    colors: kSixthColor,
    description:
        'Buah Apel Malang yang renyah dengan rasa manis asam dan beraroma wangi ini enak dimakan segar atau dibuat minuman serta dessert.rUntuk menjaga kesehatan, selain olahraga dan makan dengan pola sehat, makan sebutir apel dianjurkan oleh para ahli.',
    imageAsset: 'images/apel.png',
  ),
  BuahBuahan(
    name: 'Melon',
    price: 'Rp. 85.000/buah',
    colors: kForthColor,
    description:
        'Buah Melon Orange Manis Jumbo harga 37rb 2-4kg. Reseller very welcome DIJAMIN BISA UNTUNG GEDE HARGA DIJAMIN TERMURAH',
    imageAsset: 'images/melon.png',
  ),
  BuahBuahan(
    name: 'Lemon',
    price: 'Rp. 10.000/kg',
    colors: kForthColor,
    description:
        'Keunggulan Lemon California Lokal : 1. Harga jauh lebih murah dibanding lemon California Import. 2. Buah Lebih Fresh dan segar karena langsung dipanen setiap hari di Indonesia',
    imageAsset: 'images/lemon.png',
  ),
  BuahBuahan(
    name: 'Naga Merah',
    price: 'Rp. 5.000/buah',
    colors: kSixthColor,
    description:
        'Buah Naga Merah - HARGA PER buah +/- @400-500gr (berat dapat bervariasi)',
    imageAsset: 'images/naga_merah.png',
  ),
  BuahBuahan(
    name: 'Naga Kuning',
    price: 'Rp. 395.000/buah',
    colors: kYellowColor,
    description:
        'Buah Naga - HARGA PER buah +/- @400-500gr (berat dapat bervariasi)',
    imageAsset: 'images/naga_kuning.png',
  ),
  BuahBuahan(
    name: 'Jeruk Ambon',
    price: 'Rp. 10.000/Kg',
    colors: kForthColor,
    description: 'Buah Jeruk Ambon Manis Fresh 500gr/1000gr (Garansi)',
    imageAsset: 'images/jeruk.png',
  ),
];
