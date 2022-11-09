import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'pet_details_event.dart';
part 'pet_details_state.dart';

class PetDetailsBloc extends Bloc<PetDetailsEvent, PetDetailsState> {
  PetDetailsBloc() : super(PetDetailsInitial()) {
    on<PetDetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
