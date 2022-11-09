part of 'pet_details_bloc.dart';

abstract class PetDetailsState extends Equatable {
  const PetDetailsState();
}

class PetDetailsInitial extends PetDetailsState {
  @override
  List<Object> get props => [];
}
