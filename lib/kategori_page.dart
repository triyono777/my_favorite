import 'package:flutter/material.dart';
import 'package:my_favorite/detail_page.dart';
import 'package:my_favorite/item_model.dart';

class KategoriPage extends StatefulWidget {
  final String kategori;
  final List<ItemModel> listItem;
  final Color warna;

  const KategoriPage({Key key, this.kategori = 'Kategori', this.listItem, this.warna}) : super(key: key);

  @override
  _KategoriPageState createState() => _KategoriPageState();
}

class _KategoriPageState extends State<KategoriPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: widget.warna.withOpacity(0.5),
        title: Text('${widget.kategori}'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          widget.listItem.length,
          (index) => Hero(
            tag: index,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => DetailPage(
                      index: index,
                      imageUrl: widget.listItem[index].imageurl,
                      judul: widget.listItem[index].judul,
                      deskripsi: widget.listItem[index].deskripsi,
                      warna: widget.warna,
                    ),
                  ),
                );
              },
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(widget.listItem[index].imageurl ?? 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/480px-No_image_available.svg.png'), fit: BoxFit.contain),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(

                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(5),
                          ),

                          width: double.infinity,
                          child: Center(
                              child: Text(
                            widget.listItem[index].judul,
                            style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
                          ))),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
