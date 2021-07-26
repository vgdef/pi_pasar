import 'package:flutter/rendering.dart';
import 'package:pi_pasar/constants.dart';

class SayurSayuran {
  String name;
  String price;
  final Color color;
  String description;
  String imageAsset;

  SayurSayuran({
    this.name,
    this.price,
    this.color,
    this.description,
    this.imageAsset,
  });
}

var sayurSayuran = [
  SayurSayuran(
    name: 'Sereh',
    price: 'Rp. 1.000',
    color: kSecondColor,
    description:
        'Sereh / Serai Fresh dan Segar ukuran 1000gram.Jenis sereh lokal BUKAN sereh bangkok',
    imageAsset: 'images/sereh.png',
  ),
  SayurSayuran(
      name: 'Wortel',
      price: 'Rp. 2.000',
      color: kSecondColor,
      description:
          'Wortel Impor - HARGA PER Pcs +/- @80-250gr (berat dapat bervariasi)',
      imageAsset: 'images/wortel.png'),
  SayurSayuran(
      name: 'Kangkung',
      price: 'Rp. 7.000',
      color: kPrimaryColor,
      description: 'Kangkung Hijau Fresh Per / ikat',
      imageAsset: 'images/kangkung.png'),
  SayurSayuran(
      name: 'Paprika',
      price: 'Rp. 5.000',
      color: kPrimaryColor,
      description:
          'Paprika Mix Colour / Bell Pepper Mix Colour. Paprika selalu menjadi sayuran populer untuk ditanam di kebun. Beri jarak bibit 18-24 inci terpisah dan di baris 24 hingga 36 inci terpisah.',
      imageAsset: 'images/paprika.png'),
  SayurSayuran(
    name: 'Pockcoy',
    price: 'Rp. 6.500',
    color: kSecondColor,
    description:
        'Sayur Pokcoy/ pok coy/pok choy/bok coy dgn harga tertera adalah untuk 500 gr.',
    imageAsset: 'images/pockcoy.png',
  ),
  SayurSayuran(
    name: 'Tomat Ceri',
    price: 'Rp. 5.000/Kg',
    color: kFifthColor,
    description: 'Tomat Ceri segar yang dipetik langsung dari kebun tetangga',
    imageAsset: 'images/tomat.png',
  ),
  SayurSayuran(
    name: 'Brokoli',
    price: 'Rp. 12.000',
    color: kSecondColor,
    description: 'Brokoli',
    imageAsset: 'images/brokoli.png',
  ),
];
