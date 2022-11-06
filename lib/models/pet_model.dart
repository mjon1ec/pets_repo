
class Pet {
  final String name;
  final String breed;

  Pet(
    this.name,
    this.breed
  );

  factory Pet.fromMap(Map<String, dynamic> json) {
    return Pet(json['name'], json['breed']);
  }
  factory Pet.fromJson(Map<String, dynamic> json) {
    return Pet(json['name'], json['breed']);
  }
}