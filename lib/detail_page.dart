import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int index;
  final String imageUrl;
  final String judul;
  final String deskripsi;

  const DetailPage({Key key, this.index, this.imageUrl , this.judul, this.deskripsi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$judul'),
      ),
      body: Hero(
        tag: index,
        flightShuttleBuilder: _flightShuttleBuilder,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                imageUrl??'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/480px-No_image_available.svg.png',
                fit: BoxFit.cover,
              ),
              Text(
                '$judul',
                style: TextStyle(fontSize: 28),
              ),
              Text(
                '$deskripsi',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _flightShuttleBuilder(
      BuildContext flightContext,
      Animation<double> animation,
      HeroFlightDirection flightDirection,
      BuildContext fromHeroContext,
      BuildContext toHeroContext,
      ) {
    return DefaultTextStyle(
      style: DefaultTextStyle.of(toHeroContext).style,
      child: toHeroContext.widget,
    );
  }
}
