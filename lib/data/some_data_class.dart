class Person {
  final int id;
  final String firstName, lastName;
  final int age;

  // Maybe use @required
  Person({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.age,
  });

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      id: map['id'] as int,
      firstName: map['_firstName'] as String,
      lastName: map['_lastName'] as String,
      age: map['age'] as int,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
      'firstName': this.firstName,
      'lastName': this.lastName,
      'age': this.age,
    } as Map<String, dynamic>;
  }
}
