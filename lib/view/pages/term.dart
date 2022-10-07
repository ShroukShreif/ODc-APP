import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shrouk_project/view/pages/settings.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
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
            'Terms & Conditions',
            style: TextStyle(
              color: Colors.black,
              fontSize: 35,
            ),
          )),
    );
  }
}
