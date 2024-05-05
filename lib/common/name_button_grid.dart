// lib/widgets/name_button_grid.dart

import 'package:classtest/common/name_button.dart';
import 'package:flutter/material.dart';

import '../controller/name_controller.dart';

class NameButtonGrid extends StatelessWidget {
  final String name;

  NameButtonGrid({required this.name});

  @override
  Widget build(BuildContext context) {
    final NameController _nameController = NameController(name);
    return GridView.count(
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: List.generate(_nameController.buttonCount, (index) {
        return NameButton(index: index);
      }),
    );
  }
}
