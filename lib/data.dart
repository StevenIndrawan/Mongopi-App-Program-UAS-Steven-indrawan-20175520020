class Coffee {
  String title,
      writer,
      price,
      image,
      americano =
          'Kopi adalah minuman hasil seduhan biji kopi yang telah disangrai dan dihaluskan menjadi bubuk. Kopi merupakan salah satu komoditas di dunia yang dibudidayakan lebih dari 50 negara. Dua varietas pohon kopi yang dikenal secara umum yaitu Kopi Robusta (Coffea canephora) dan Kopi Arabika (Coffea arabica). Mongopi menjual kopi berkualitas yang di buat dalam kemasan botolan dengan harga yang terjangkau untuk kalangan muda yang suka kopi';
  int pages;
  double rating;

  Coffee(
      this.title, this.writer, this.price, this.image, this.rating);
}

final List<Coffee> Coffees = [
  Coffee('Americano','minuman kopi yang dibuat dengan mencampurkan satu seloki espresso dengan air panas', 
      'Rp 10.000', 'assets/americano.jpg', 4.0),
  Coffee('Caffe Latte','espresso atau kopi yang dicampur dengan susu dan memiliki lapisan busa yang tipis di bagian atasnya', 
      'Rp 13.000',  'assets/latte.jpg', 4.5),
  Coffee('Redvelvet Latte',  'red velvet latte ini akan memberikan sensasi baru. Seperti makan red velvet cake di dalam minuman kopi.', 
      'Rp 15.000', 'assets/redvelvet.jpg', 5.0),
  Coffee('Green Tea', 'diracik dari tiga bahan dasar utama berupa powder green tea, ice, dan susu yang diproses mixing',  
      'Rp 15.000', 'assets/greentea.jpg', 4.5),
  Coffee('Thai Tea', 'varian teh asal negeri gajah putih Thailand yang kini sudah mendunia.',
      'Rp 15.000', 'assets/thaitea.jpg', 4.0),
];