import 'package:flutter/material.dart';
import 'package:my_favorite/item_model.dart';

class KategoriPage extends StatefulWidget {
  final String kategori;
  final List<ItemModel> listItem;

  const KategoriPage({Key key, this.kategori = 'Kategori', this.listItem}) : super(key: key);

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
      body: GridView.count(
        crossAxisCount: widget.listItem.length,
        children: List.generate(
          widget.listItem.length,
          (index) => Text(widget.listItem[index].judul),
        ),
      ),
    );
  }
}
