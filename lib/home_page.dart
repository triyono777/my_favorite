import 'package:flutter/material.dart';
import 'package:my_favorite/item_model.dart';
import 'package:my_favorite/kategori_page.dart';

class HomePage extends StatefulWidget {
  final String nama;

  const HomePage({Key key, this.nama}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ItemModel> listMovie = <ItemModel>[
    ItemModel(
      judul: 'Naruto',
      deskripsi: 'Filem Naruto',
      imageurl: 'Imge url',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        children: [
          Text('Selamat Datang ${widget.nama}'),
          Expanded(
            child: ListView(
              children: [
                TemplateCard(
                  judul: 'Movie',
                  jumlah: 6,
                  warna: Colors.red,
                  listItem: listMovie,
                ),
                TemplateCard(
                  judul: 'Music',
                  jumlah: 6,
                  warna: Colors.green,
                ),
                TemplateCard(
                  judul: 'Book',
                  jumlah: 6,
                  warna: Colors.purple,
                ),
                TemplateCard(
                  judul: 'Anime',
                  jumlah: 6,
                  warna: Colors.orange,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TemplateCard extends StatelessWidget {
  final String judul;
  final int jumlah;
  final Color warna;
  final List<ItemModel> listItem;

  const TemplateCard({
    Key key,
    this.judul = 'judul',
    this.jumlah,
    this.warna = Colors.red, this.listItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => KategoriPage(
                    kategori: judul,
                listItem: listItem,
                  )));
        },
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [warna.withOpacity(0.5), warna])),
          child: ListTile(
            title: Text(
              '$judul',
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
            subtitle: Text('$jumlah Items'),
          ),
        ),
      ),
    );
  }
}
