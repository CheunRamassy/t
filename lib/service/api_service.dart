// import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer';

import 'package:test/model/movie_from_api.dart';

class ApiService {
  static const String _apiKey = '20a699fb69b82aaac4aca9f0179e8594';
  static const String _baseUrl = 'https://api.themoviedb.org/3';

  static Future<List<MovieFromApi>> movies() async {
    final response = await http.get(
      Uri.parse('$_baseUrl/movie/popular?api_key=$_apiKey&language=fr-FR'),
      // Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );

    if (response.statusCode == 200) {
      final Map data = json.decode(response.body);
      final List results = data['results'];
      log('Film reçu : ${jsonEncode(results[0])}', name: 'fetchPopularMovies');

      return results.map((json) => MovieFromApi.fromJson(json)).toList();
    } else {
      throw Exception(('Erreur de récuperation: ${response.statusCode}'));
    }
  }
}
