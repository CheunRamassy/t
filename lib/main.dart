import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:test/service/api_service.dart';
import 'package:test/views/home.dart';

void main() {
  // test('Test récupération des films', () async {
  //   final movies = await ApiService.movies();
  //   expect(movies.isNotEmpty, true);
  //   print('Premier film : ${movies[0].title}');
  // });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: HomePage());
  }
}
