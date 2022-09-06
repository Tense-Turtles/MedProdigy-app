// ignore_for_file: implementation_imports, unnecessary_import, camel_case_types, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class logs extends StatefulWidget {
  const logs({super.key});

  @override
  State<logs> createState() => _logsState();
}

class _logsState extends State<logs> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("logs here"),
    );
  }
}
