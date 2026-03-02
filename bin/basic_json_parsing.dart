import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  parseJson();
}

void parseJson() {
  final jsonFile = File('lib/college.json');
  final jsonData = jsonFile.readAsStringSync();

  final parsedJson = jsonDecode(jsonData);

  print(parsedJson['college']['location']['city']);
}