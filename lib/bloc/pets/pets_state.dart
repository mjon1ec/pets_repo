part of 'pets_bloc.dart';

abstract class PetsState extends Equatable {
  const PetsState();
}

class PetsInitial extends PetsState {
  @override
  List<Object> get props => [];
}
