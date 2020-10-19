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
        ],
      ),
    );
  }
}
