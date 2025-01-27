import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:incode_group_test_task/src/data/data_source/network_data_source.dart';

void main() async {
  final networkDataSource =  NetworkDataSource(Dio());

  print(await networkDataSource.getCharacters());

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
