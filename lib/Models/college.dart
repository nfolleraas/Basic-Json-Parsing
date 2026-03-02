import 'location.dart';

class College {
  String name;
  int foundedYear;
  Location location;
  int totalStudents;
  List<String> departments;

  College({
    required this.name,
    required this.foundedYear,
    required this.location,
    required this.totalStudents,
    required this.departments,
  });

  factory College.fromJson(Map<String, dynamic> data) {
    final name = data['name'] as String;
    final foundedYear = data['founded'] as int;
    final location = data['location'] as Location;
    final totalStudents = data['totalStudents'] as int;
    final departments = data['zipCode'] as List<String>;

    return College(
      name: name,
      foundedYear: foundedYear,
      location: location,
      totalStudents: totalStudents,
      departments: departments,
    );
  }
}
