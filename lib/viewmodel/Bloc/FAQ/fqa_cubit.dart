import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'fqa_state.dart';

class FqaCubit extends Cubit<FqaState> {
  FqaCubit() : super(FqaInitial());
}
