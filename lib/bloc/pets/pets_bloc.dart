

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:very_good_cli/models/pet_model.dart';
import 'package:very_good_cli/repository/pets_repository.dart';

part 'pets_event.dart';
part 'pets_state.dart';

class PetsBloc extends Bloc<PetsEvent, PetsState> {

  final PetsRepository _petsRepository;

  PetsBloc(this._petsRepository) : super (PetsDataLoading()) {
    on<LoadApiEvent>((event, emit) async {
      emit(PetsDataLoading());
      try {
        final pets = await _petsRepository.decodePet();
        emit(PetsDataLoaded(petsData: pets));
      } catch (e) {
        emit(PetsDataError(e.toString()));
      }
    });
  }


}


