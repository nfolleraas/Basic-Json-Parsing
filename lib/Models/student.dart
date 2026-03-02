import 'address.dart';

class Student {
  int ID;
  String name;
  int age;
  int gpa;
  bool isEnrolled;
  String major;
  List<String> courses;
  List<Address> address;

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
}
