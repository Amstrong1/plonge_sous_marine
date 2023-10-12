// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart' as http;

Future registerUser(
    String name, String email, String password, String c_password) async {
  final response = await http.post(
    Uri.parse('https://laplongeesousmarine.fr/api/register'),
    body: {
      'name': name,
      'email': email,
      'password': password,
      'c_password': password,
    },
  );

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    final token = data['token'];
    // Stocker le token localement ou utiliser une gestion de session.
    return token;
  } else {
    throw Exception('Échec de l\'inscription');
  }
}
