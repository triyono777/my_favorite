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

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Selamat Datang '),
            Text('di '),
            Text('MyFavorite App',style: TextStyle(fontSize: 30),),
            SizedBox(height: 20,),
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

                AnimatedOpacity(
                  opacity: textEditingController.text.isEmpty ? 0 : 1 ,
                  curve: Curves.easeInOut,
                  duration: Duration(milliseconds: 500),
                  child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RaisedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(
                                builder: (ctx) => HomePage(
                                      nama: textEditingController.text,
                                    ),),);
                          },
                          child: Text('Lanjut'),
                        ),
                    ],
                  ),
                )

          ],
        ),
      ),
    );
  }
}
