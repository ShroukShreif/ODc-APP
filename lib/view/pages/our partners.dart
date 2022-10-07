import 'package:flutter/material.dart';
import 'package:shrouk_project/view/pages/settings.dart';

class OurParners extends StatelessWidget {
  const OurParners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 40,
              color: Colors.deepOrange,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Settingpage()));
            },
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            ' Our parteners ',
            style: TextStyle(
                color: Colors.black, fontSize: 27, fontWeight: FontWeight.bold),
          ),
          actions: [],
        ),
      ),
    );
  }
}
