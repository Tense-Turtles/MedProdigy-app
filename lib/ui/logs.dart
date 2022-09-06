// ignore_for_file: implementation_imports, unnecessary_import, camel_case_types, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class logs extends StatelessWidget {
  const logs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: const <Widget>[
        Card(
            child: ListTile(
                title: Text("BP BG TEMP SpO\u2082"),
                subtitle: Text("90 90 90 90"),
                trailing: Text(
                  "2022-01-01T00:00:00",
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.end,
                ))),
        Card(
            child: ListTile(
                title: Text("BP BG TEMP SpO\u2082"),
                subtitle: Text("90 90 90 90"),
                trailing: Text(
                  "2022-01-01T00:00:00",
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.end,
                ))),
        Card(
            child: ListTile(
                title: Text("BP BG TEMP SpO\u2082"),
                subtitle: Text("90 90 90 90"),
                trailing: Text(
                  "2022-01-01T00:00:00",
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.end,
                ))),
        Card(
            child: ListTile(
                title: Text("BP BG TEMP SpO\u2082"),
                subtitle: Text("90 90 90 90"),
                trailing: Text(
                  "2022-01-01T00:00:00",
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.end,
                ))),
      ],
    );
  }
}
