import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../model/loginmodel.dart';
import '../DataBase/Netwok/dio_helper.dart';
import '../DataBase/Netwok/end_points.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context)=>BlocProvider.of (context);
  TextEditingController emailct=TextEditingController();
  TextEditingController passwordct=TextEditingController();
  loginmodel modelData= loginmodel();
}





