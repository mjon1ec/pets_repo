import 'package:flutter/material.dart';
import 'package:very_good_cli/models/pet_model.dart';
import 'package:very_good_cli/models/pets_model.dart';
import 'package:very_good_cli/view/pet.dart';

class PetsScreen extends StatelessWidget {
  final String? name;
  final Future<List<Pet>>? futurePets;

  PetsScreen({Key? key, this.name, this.futurePets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pets repository'),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(20.0),
          child: Padding(
            padding: EdgeInsets.only(bottom: 10.0, left: 15.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Nice, we have found  pets'),
            ),
          ),
        ),
      ),
      body: FutureBuilder<List<Pet>>(
          future: futurePets,
          builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? PetList(pets: snapshot.data!)
              : Center(child: CircularProgressIndicator(color: Colors.red));
         },
      ),
    );
  }
}
