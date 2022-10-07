import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shrouk_project/viewmodel/DataBase/Netwok/dio_helper.dart';
import 'package:shrouk_project/viewmodel/DataBase/Netwok/end_points.dart';
import '../../../Constant/Token.dart';
import '../../../model/loginmodel.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);
  TextEditingController emailct = TextEditingController();
  TextEditingController passwordct = TextEditingController();
  loginmodel? modelData;

  Future<void> Login(BuildContext context) async {
    var json = {
      "email": emailct.text.toString(),
      "password": passwordct.text.toString()
    };

    await DioHelper.postData(url: loginEndPoint, data: json).then((value) {
      modelData = loginmodel.fromJson(value.data);
      print(modelData!.data!.accessToken);
      emit(LoginDatasuccss());
    }).catchError((e) {
      if(e is DioError){
        print(e.response!.data);
      }
    });
  }
}
