import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'regist_state.dart';

class RegistCubit extends Cubit<RegistState> {
  RegistCubit() : super(RegistInitial());
}
