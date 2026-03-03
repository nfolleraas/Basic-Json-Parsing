import 'dart:convert';
import 'dart:io';

import 'package:basic_json_parsing/Models/college.dart';

void main(List<String> arguments) {
  parseJson();
}

void parseJson() {
  // Read raw JSON string from file
  final jsonFile = File('lib/college.json');
  final jsonData = jsonFile.readAsStringSync();

  // Decode the JSON sting into a Map<String, dynamic>
  final parsedJson = jsonDecode(jsonData);

  // Pass the 'college' key specifically and create instance of College from the data
  final college = College.fromJson(parsedJson['college']);

  print("Name of college: ${college.name}");
  print("Founded in: ${college.foundedYear}");
  print("Location: ${college.location.city}, ${college.location.state}, ${college.location.zipCode}");
  print("Total students: ${college.totalStudents}");
  print("Departments: ${college.departments}");
}