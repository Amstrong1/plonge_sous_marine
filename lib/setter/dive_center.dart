import 'dart:async';
import 'package:http/http.dart' as http;

class CharacterApi {
  static Future<http.Response> getCharacters() async {
    final response = await http
        .get(Uri.parse('https://laplongeesousmarine.fr/api/get_moniteurs'));
    return response;
  }
}
