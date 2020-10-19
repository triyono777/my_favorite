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
      imageurl: 'https://upload.wikimedia.org/wikipedia/id/3/36/Naruto_Uzumaki.png',
    ),
    ItemModel(
      judul: 'Naruto',
      deskripsi: 'Filem Naruto',
      imageurl: 'Imge url',
    ),
    ItemModel(
      judul: 'Naruto',
      deskripsi: 'Filem Naruto',
      imageurl: 'Imge url',
    ),
    ItemModel(
      judul: 'Naruto',
      deskripsi: 'Filem Naruto',
      imageurl: 'Imge url',
    ),
    ItemModel(
      judul: 'Naruto',
      deskripsi: 'Filem Naruto',
      imageurl: 'Imge url',
    ),
  ];

  List<ItemModel> listMusic = <ItemModel>[
    ItemModel(
      judul: 'Naruto',
      deskripsi: 'Filem Naruto',
      imageurl: 'Imge url',
    ),
  ];
  List<ItemModel> listBook = <ItemModel>[
    ItemModel(
      judul: 'Naruto',
      deskripsi: 'Filem Naruto',
      imageurl: 'Imge url',
    ),
  ];

  List<ItemModel> listAnime = <ItemModel>[
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
                  jumlah: listMovie.length,
                  warna: Colors.red,
                  listItem: listMovie,
                ),
                TemplateCard(
                  judul: 'Music',
                  jumlah: listMusic.length,
                  warna: Colors.green,
                  listItem: listMusic,
                ),
                TemplateCard(
                  judul: 'Book',
                  jumlah: listBook.length,
                  warna: Colors.purple,
                  listItem: listBook,
                ),
                TemplateCard(
                  judul: 'Anime',
                  jumlah: listAnime.length,
                  warna: Colors.orange,
                  listItem: listAnime,
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
    this.warna = Colors.red,
    this.listItem,
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
