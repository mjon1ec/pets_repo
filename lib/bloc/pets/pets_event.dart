part of 'pets_bloc.dart';

abstract class PetsEvent extends Equatable {
  const PetsEvent();
}

class LoadApiEvent extends PetsEvent{
  LoadApiEvent({this.petsCollection = const []});

  final List<Pet> petsCollection;

  @override
  List<Object?> get props => [petsCollection];
}
