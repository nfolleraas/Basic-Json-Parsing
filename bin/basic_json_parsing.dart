import 'package:basic_json_parsing/main.dart';
import 'package:dotenv/dotenv.dart';

void main(List<String> arguments) {
  final env = DotEnv(includePlatformEnvironment: true)..load();

  // parseJson();
  fetchMovieData(env);
}