import 'package:flutter/material.dart';
import 'package:very_good_cli/models/pet_model.dart';
import 'dart:convert';

class PetsRepo extends StatelessWidget {
  final List<Pet> petList;

  PetsRepo({Key? key, required this.petList});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

List<Pet> decodePet(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Pet>((json) => Pet.fromMap(json)).toList();
}