import 'package:flutter/material.dart';
import 'package:very_good_cli/models/pet_model.dart';

class PetDetails extends StatelessWidget {
  PetDetails({required this.pet});

  final Pet pet;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 140,
        child: Card(
          elevation: 5,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Icon((Icons.pets)),
                Expanded(
                    child: Container(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(pet.name),
                            Text(pet.breed),
                          ],
                        ),
                    ),
                ),
              ],
        ),
        ),
    );
  }
}
