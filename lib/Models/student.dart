
import 'address.dart';

class Student {
  int ID;
  String name;
  int age;
  double gpa;
  bool isEnrolled;
  String major;
  List<String> courses;
  Address address;

  Student({
    required this.ID,
    required this.name,
    required this.age,
    required this.gpa,
    required this.isEnrolled,
    required this.major,
    required this.courses,
    required this.address,
  });

  factory Student.fromJson(Map<String, dynamic> data) {
    final ID = data['id'] as int;
    final name = data['name'] as String;
    final age = data['age'] as int;
    final gpa = data['gpa'] as double;
    final isEnrolled = data['isEnrolled'] as bool;
    final major = data['major'] as String;
    final courses = data['courses'].cast<String>();
    final address = Address.fromJson(data['address']);

    return Student(
        ID: ID,
        name: name,
        age: age,
        gpa: gpa,
        isEnrolled: isEnrolled,
        major: major,
        courses: courses,
        address: address);
  }

  @override
  String toString() {
    return """
    Student ID: $ID
    Name: $name
    Age: $age years old
    GPA: $gpa
    isEnrolled: $isEnrolled
    Major: $major
    Courses: $courses
    Address: ${address.city}, ${address.street}, ${address.zipCode}
    """;
  }
}
