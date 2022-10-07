import 'package:flutter/material.dart';
import 'package:shrouk_project/view/pages/addnote.dart';
import 'package:shrouk_project/view/pages/settings.dart';

class addnote extends StatelessWidget {
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
                  MaterialPageRoute(builder: (context) => notespage()));
            },
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Add Note',
            style: TextStyle(
              color: Colors.black,
              fontSize: 35,
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            SizedBox(
              height: 20,
            ),

            TextFormField(
              initialValue: 'Date',
              decoration: InputDecoration(
                labelText: 'Date',
                hintText: 'Date',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 40,
            ),

            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(60),
                hintText: 'Note',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey, // Background color
                ),
                icon: Icon(
                  Icons.add,
                  size: 25,
                  color: Colors.black,
                ),
                label: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
