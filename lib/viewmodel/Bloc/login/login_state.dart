part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}
class LoginDatasuccss extends LoginState {}

class LoginLoading extends LoginState{}
class LoginFailed extends LoginState{}
