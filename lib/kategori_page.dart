import 'package:flutter/material.dart';

class KategoriPage extends StatefulWidget {
  final String kategori;

  const KategoriPage({Key key, this.kategori='Kategori'}) : super(key: key);
  @override
  _KategoriPageState createState() => _KategoriPageState();
}

class _KategoriPageState extends State<KategoriPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.kategori}'),
      ),
    );
  }
}
