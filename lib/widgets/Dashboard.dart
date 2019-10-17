import 'package:flutter/material.dart';
import 'package:playground/models/AppStorage.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test App Bar'),
      ),
      body: Consumer<AppStorage>(
        builder: (context, sd, _) => Column(
          children: <Widget>[
            Text(sd.clickCount.toString()),
            RaisedButton(
                child: Text('Press me'),
                onPressed: () {
                  sd.increaseClickCount();
                })
          ],
        ),
      ),
    );
  }
}
