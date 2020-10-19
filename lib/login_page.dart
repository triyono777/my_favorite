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
      body: Stack(
        children: [
          Positioned(
              right: -MediaQuery.of(context).size.width/4,
              top: 20,
              child: Icon(Icons.favorite,size: MediaQuery.of(context).size.width/1.2,color: Theme.of(context).primaryColor,)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Selamat Datang '),
                Text('di '),
                Text(
                  'MyFavorite App',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  textCapitalization: TextCapitalization.characters,
                  onChanged: (val) {
                    setState(() {

                    });
                  },
                  controller: textEditingController,
                  decoration: InputDecoration(
                    hintText: 'Perkenalkan dirimu...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                AnimatedOpacity(
                  opacity: textEditingController.text.isEmpty ? 0 : 1,
                  curve: Curves.easeInOut,
                  duration: Duration(milliseconds: 1000),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (ctx) => HomePage(
                                nama: textEditingController.text,
                              ),
                            ),
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: Theme.of(context).primaryColor,
                        child: Text('Lanjut',style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
