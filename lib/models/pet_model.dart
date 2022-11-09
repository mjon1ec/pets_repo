import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class Pet extends Equatable{
  final String name;
  final String breed;

  const Pet(
    this.name,
    this.breed
  );

  factory Pet.fromMap(Map<String, dynamic> json) {
    return Pet(json['name'], json['breed']);
  }
  factory Pet.fromJson(Map<String, dynamic> json) {
    return Pet(json['name'], json['breed']);
  }

  @override
  List<Object?> get props => [name, breed];
}