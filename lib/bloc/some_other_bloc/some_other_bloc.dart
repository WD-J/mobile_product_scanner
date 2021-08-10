import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'some_other_event.dart';
part 'some_other_state.dart';

class SomeOtherBloc extends Bloc<SomeOtherEvent, SomeOtherState> {
  SomeOtherBloc() : super(SomeOtherInitial());

  @override
  Stream<SomeOtherState> mapEventToState(
    SomeOtherEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
