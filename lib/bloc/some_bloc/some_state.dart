part of 'some_bloc.dart';

abstract class SomeState extends Equatable {
  const SomeState();
}

class SomeInitial extends SomeState {
  @override
  List<Object> get props => [];
}
