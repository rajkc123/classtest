// lib/screens/gridview_screen.dart

import 'package:classtest/common/name_button_grid.dart';
import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  final String name;

  GridViewScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Screen'),
      ),
      body: NameButtonGrid(name: name),
    );
  }
}
