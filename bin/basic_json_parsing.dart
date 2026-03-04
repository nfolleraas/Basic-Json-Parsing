import 'package:basic_json_parsing/main.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main(List<String> arguments) {
  dotenv.load();

  // parseJson();
  fetchMovieData();
}