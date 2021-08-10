import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'some_event.dart';
part 'some_state.dart';

class SomeBloc extends Bloc<SomeEvent, SomeState> {
  SomeBloc() : super(SomeInitial());

  @override
  Stream<SomeState> mapEventToState(
    SomeEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
