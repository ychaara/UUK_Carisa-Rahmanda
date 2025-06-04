import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:resepmamak/resep.dart';

class ApiService {
  static Future<List<Recipe>> fetchRecipes() async {
    final url = Uri.parse('https://dummyjson.com/recipes');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List list = data['recipes'];
      return list.map((e) => Recipe.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load recipes');
    }
  }
}