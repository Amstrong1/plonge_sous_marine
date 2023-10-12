import 'dart:convert';
import 'package:http/http.dart' as http;

Future loginUser(String email, String password) async {
  final response = await http.post(
    Uri.parse('https://laplongeesousmarine.fr/api/login'),
    body: {
      'email': email,
      'password': password,
    },
  );

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    final token = data['token'];
    // Stocker le token localement ou utiliser une gestion de session.
    return token;
  } else {
    throw Exception('Échec de la connexion');
  }
}
