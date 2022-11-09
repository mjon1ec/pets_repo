import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:very_good_cli/bloc/pets/pets_bloc.dart';
import 'package:very_good_cli/models/pet_model.dart';
import 'package:very_good_cli/models/pets_model.dart';
import 'package:very_good_cli/repository/pets_repository.dart';

class PetsScreen extends StatelessWidget {
  final String? name;
  final Future<List<Pet>>? futurePets;

  const PetsScreen({Key? key, this.name, this.futurePets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PetsBloc(
        RepositoryProvider.of<PetsRepository>(context),
      )..add(LoadApiEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pets repository'),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(20.0),
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.0, left: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Nice, we have found pets'),
              ),
            ),
          ),
        ),
        body: BlocBuilder<PetsBloc, PetsState>(
          builder: (context, state) {
            if (state is PetsDataLoading){
              return const Center(child: CircularProgressIndicator());
            }
            if (state is PetsDataLoaded){
              return PetList(pets: state.petsData);
            }
            if (state is PetsDataError) {
              return Center(child: Text(state.error.toString()));
            }
          },
        )
      ),
    );
  }
}
