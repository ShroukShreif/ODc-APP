import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'ocd_state.dart';

class OcdCubit extends Cubit<OcdState> {
  OcdCubit() : super(OcdInitial());
}
