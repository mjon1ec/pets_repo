
import 'package:flutter/material.dart';
import 'package:very_good_cli/api/pets_api.dart';
import 'package:very_good_cli/models/pet_model.dart';
import 'dart:convert';

abstract class PetsService {
  Future<List<Pet>> decodePet();
}

class PetsRepository implements PetsService{

  Future<List<Pet>> decodePet() async {
      final fetchData = await PetsAPI().getRawPets();
      final parsed = json.decode(fetchData).cast<Map<String, dynamic>>();
      return parsed.map<Pet>((json) => Pet.fromMap(json)).toList();
  }
}

