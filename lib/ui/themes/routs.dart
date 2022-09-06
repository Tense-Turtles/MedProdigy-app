// ignore_for_file: camel_case_types, implementation_imports, unused_local_variable, unused_import
import 'package:flutter/src/widgets/framework.dart';

import '../home_view.dart';
import '../logs.dart';
import '../profile.dart';

class routsNavBar extends StatelessWidget {
  final int index;
  const routsNavBar({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    List<Widget> myList = [HomeView(), logs(), profileview()];
    return myList[index];
  }
}
