import 'package:flutter/material.dart';
import 'package:shrouk_project/view/pages/Lecture_screen.dart';
import 'package:shrouk_project/view/pages/finals.dart';
import 'package:shrouk_project/view/pages/home_page.dart';

import 'package:shrouk_project/view/pages/log-in.dart';
import 'package:shrouk_project/view/pages/news.dart';
import 'package:shrouk_project/view/pages/sections.dart';

import 'package:shrouk_project/viewmodel/DataBase/Netwok/dio_helper.dart';

void main() async {
  await DioHelper.init();
  runApp(
    Myapp(),
  );
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
