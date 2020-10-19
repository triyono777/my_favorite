import 'package:flutter/material.dart';
import 'package:my_favorite/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Column(
        children: [
          Text('Selamat'),
          TextField(
            onChanged: (val) {
              setState(() {});
            },
            controller: textEditingController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          textEditingController.text.isNotEmpty
              ? RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (ctx) => HomePage(
                              nama: textEditingController.text,
                            ),),);
                  },
                  child: Text('Lanjut'),
                )
              : SizedBox()
        ],
      ),
    );
  }
}
