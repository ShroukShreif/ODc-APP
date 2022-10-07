import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shrouk_project/view/pages/home_page.dart';
import 'package:shrouk_project/view/pages/note.dart';

import '../../viewmodel/Bloc/add_note/add_note_cubit.dart';

class notespage extends StatelessWidget {
  const notespage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
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
                      MaterialPageRoute(builder: (context) => Homepage()));
                },
              ),
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Text(
                ' Notes ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => addnote()));
              },
              backgroundColor: Colors.blueGrey,
              child: Icon(
                Icons.add,
              ),
            ),
            body: Center(
              child: (Text(
                'There is No Data To Show',
                style: TextStyle(
                  fontSize: 30,
                ),
              )),
            ),
          );
        },
      ),
    );
  }
}
