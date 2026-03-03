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
    final location = Location.fromJson(data['location']);
    final totalStudents = data['totalStudents'] as int;
    final departments = data['departments'].cast<String>();

    return College(
      name: name,
      foundedYear: foundedYear,
      location: location,
      totalStudents: totalStudents,
      departments: departments,
    );
  }

  @override
  String toString() {
    return """
    Name of College: $name
    Founded in: $foundedYear
    Location: ${location.city}, ${location.state}, ${location.zipCode}
    Total students: $totalStudents
    Departments: $departments
    """;
  }
}
