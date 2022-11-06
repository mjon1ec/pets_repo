import 'package:flutter/material.dart';
import 'package:very_good_cli/models/pet_model.dart';
import 'package:very_good_cli/view/pet.dart';

class PetList extends StatelessWidget {
  final List<Pet> pets;

  PetList({Key? key, required this.pets});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pets.length,
      itemBuilder: (context, index) {
        return PetDetails(pet: pets[index]);
      }
    );
  }
}