part of 'pets_bloc.dart';

@immutable
abstract class PetsState extends Equatable {}

class PetsDataLoading extends PetsState {
  @override
  List<Object?> get props => [];
}

class PetsDataLoaded extends PetsState {

  final List<Pet> petsData;

  PetsDataLoaded({required this.petsData});

  @override
  List<Object?> get props => [petsData];
}

class PetsDataError extends PetsState {

  final String error;

  PetsDataError(this.error);

  @override
  List<Object?> get props => [error];
}
