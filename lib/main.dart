import 'package:flutter/material.dart';
import 'package:playground/models/AppStorage.dart';
import 'package:playground/widgets/Dashboard.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => AppStorage(),
      child: MaterialApp(
        title: 'Playground',
        theme: ThemeData.dark(),
        home: Dashboard(),
      ),
    );
  }
}
