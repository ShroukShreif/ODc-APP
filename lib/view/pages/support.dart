import 'package:flutter/material.dart';
import 'package:shrouk_project/view/pages/settings.dart';

class Supportpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ' Support ',
          style: TextStyle(
              color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Name',
                prefixIcon: Icon(
                  Icons.person_sharp,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'E_Mail',
                prefixIcon: Icon(
                  Icons.email_outlined,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(60),
                hintText: 'What is making you unhappy?',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 35,
            ),

            Container(
              width: double.infinity,
              color: Colors.orange,
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    //Icon(Icons.accessible_forward_rounded),

    //return Text ('First App');
  }
}
