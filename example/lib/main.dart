import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tekio_menu/models/tekio_menu_data.dart';
import 'package:tekio_menu/widgets/base_menu_builder.dart';

Future<void> main() async {
  runApp(FormExample());
}

class FormExample extends StatelessWidget {
  FormExample({super.key});

  final ColorScheme colorScheme = ColorScheme.fromSeed(seedColor: Colors.green);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: colorScheme),
      home: Scaffold(
        body: FutureBuilder<String>(
          future: rootBundle.loadString('lib/example.json'),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return TekioBaseMenuBuilder(
                baseMenuData: TekioMenuData.fromJson(
                  jsonDecode(snapshot.data!),
                ),
                navigateTo: (path) {
                  if (kDebugMode) {
                    print(path);
                  }
                },
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
