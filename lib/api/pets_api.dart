class PetsAPI {
  Future<String> getRawPets() {
    return Future.delayed(
        const Duration(seconds: 2),
          () => '[{"name":"Atos", "breed":"York Shire"},'
          ' {"name":"Panko", "breed": "Shiba"},'
          ' {"name":"Cleo", "breed": "Pomeranian"}, {"name":"Max"}]',
    );
  }
}


// import 'dart:convert';
//
// class PetsAPI {
//   Future<List<Map<String, dynamic>>> getRawPets() async => await Future.delayed(
//     const Duration(seconds: 2),
//         () => List<Map<String, dynamic>>.from(
//     json.decode('[{"name":"Atos", "breed":"York Shire"},'
//           ' {"name":"Panko", "breed": "Shiba"},'
//           ' {"name":"Cleo", "breed": "Pomeranian"}, {"name":"Max"}]',
//       ),
//     ),
//   );
//   Future<List<Map<String, dynamic>>> get getPets async => await getRawPets();
// }
