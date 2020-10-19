import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int index;
  final String imageUrl;

  const DetailPage({Key key, this.index, this.imageUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Hero(tag:index ,child: Image.network(imageUrl),),
    );
  }
}
