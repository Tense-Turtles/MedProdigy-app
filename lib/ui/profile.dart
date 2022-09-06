// ignore_for_file: camel_case_types, implementation_imports, unnecessary_import, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class profileview extends StatefulWidget {
  const profileview({super.key});

  @override
  State<profileview> createState() => _profileviewState();
}

class _profileviewState extends State<profileview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("profile here"),
    );
  }
}
