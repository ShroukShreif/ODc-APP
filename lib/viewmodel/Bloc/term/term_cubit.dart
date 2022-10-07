import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'term_state.dart';

class TermCubit extends Cubit<TermState> {
  TermCubit() : super(TermInitial());
}
