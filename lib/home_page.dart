import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String nama;

  const HomePage({Key key, this.nama}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                TemplateCard(judul: 'Movie',jumlah: 6,warna: Colors.red,),
                TemplateCard(judul: 'Music',jumlah: 6,warna: Colors.green,),
                TemplateCard(judul: 'Book',jumlah: 6,warna: Colors.purple,),
                TemplateCard(judul: 'Anime',jumlah: 6,warna: Colors.orange,),
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
  const TemplateCard({
    Key key, this.judul, this.jumlah, this.warna = Colors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [warna.withOpacity(0.5), warna])
        ),
        child: ListTile(
          title: Text('$judul'),
          subtitle: Text('$jumlah Items'),
        ),
      ),
    );
  }
}
