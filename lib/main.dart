import 'dart:convert';
import 'dart:io';

import 'package:basic_json_parsing/Models/student.dart';
import 'package:basic_json_parsing/Models/college.dart';
import 'package:dotenv/dotenv.dart';
import 'package:http/http.dart' as http;

void parseJson() {
  // Read raw JSON string from file
  final jsonFile = File('lib/college.json');
  final jsonData = jsonFile.readAsStringSync();

  // Decode the JSON sting into a Map<String, dynamic>
  final parsedJson = jsonDecode(jsonData);

  // Pass the 'college' key specifically and create instance of College from the data
  final college = College.fromJson(parsedJson['college']);

  print(college.toString());

  for (var data in parsedJson['students']) {
    print(Student.fromJson(data).toString());
  }

}

Future<void> fetchMovieData(DotEnv env) async {
  final url = Uri(
    scheme: 'https',
    host: 'api.themoviedb.org',
    path: '/3/movie/now_playing',
  );

  print(env['TMDB_KEY']);

  try {
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer ${env['TMDB_KEY']}',
    });

    // Check if response is successful (2xx is OK)
    if (response.statusCode == 200) {
      print(response.body);
    }
    else {
      print('Failed to load data: ${response.statusCode}');
    }
  }
  catch (e) {
    print('Error: $e');
  }
}