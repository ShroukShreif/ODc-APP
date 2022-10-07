import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shrouk_project/Constant/Token.dart';
import 'package:shrouk_project/model/lectures_model.dart';
import 'package:shrouk_project/viewmodel/DataBase/Netwok/dio_helper.dart';
import 'package:shrouk_project/viewmodel/DataBase/Netwok/end_points.dart';

part 'lecture_state.dart';

class LectureCubit extends Cubit<LectureState> {
  LectureCubit() : super(LectureInitial());
  static LectureCubit get (context)=> BlocProvider.of (context);
  lectuersmodel?modelData;
   void getData(){
     DioHelper.getData(url: lectureEndPoint,token:Token).then((value) {
     if(value.statusCode==200) {
       modelData = lectuersmodel.fromJson(value.data);
       emit(LecturesDataSuccess());
     }

  }
     );

}}
