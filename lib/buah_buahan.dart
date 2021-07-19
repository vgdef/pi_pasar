class BuahBuahan {
  String name;
  String price;
  String description;
  String imageAsset;

  BuahBuahan({this.name, this.price, this.description, this.imageAsset});
}

var buahBuahan = [
  BuahBuahan(
    name: 'Apel',
    price: 'RP. 10.000/kg',
    description: 'Buah Apel Malang',
    imageAsset: 'images/apel.jpg',
  ),
  BuahBuahan(
    name: 'Melon',
    price: 'Rp. 85.000/buah',
    description: 'Buah Melon Manis',
    imageAsset: 'images/melon.jpg',
  ),
  BuahBuahan(
    name: 'Lemon',
    price: 'Rp. 10.000/kg',
    description: 'Buah Lemon Asam',
    imageAsset: 'images/lemon.jpg',
  ),
  BuahBuahan(
    name: 'Naga Merah',
    price: 'Rp. 5.000/buah',
    description: 'Buah Naga Merah',
    imageAsset: 'images/naga_merah.jpg',
  ),
  BuahBuahan(
    name: 'Naga Kuning',
    price: 'Rp. 7.000/buah',
    description: 'Buah Naga Kuning',
    imageAsset: 'images/naga_kuning.jpg',
  ),
];
