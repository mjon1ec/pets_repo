import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:very_good_cli/bloc/pets/pets_bloc.dart';
import 'package:very_good_cli/repository/pets_repository.dart';
import 'package:very_good_cli/view/pets.dart';

import 'api/pets_api.dart';

void main() async {
  runApp(const MyApp());
  final petInfo = await PetsAPI().getRawPets();
  print(petInfo);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pets repository',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.black,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
          foregroundColor: Colors.black,
          color: Colors.white,
          shadowColor: Colors.grey,
        ),
      ),
      home: RepositoryProvider(
        create: (context) => PetsRepository(),
        child: PetsScreen(),
      ),
    );
  }
}

