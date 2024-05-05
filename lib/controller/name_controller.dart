// lib/controller/name_controller.dart

import '../model/name_model.dart';

class NameController {
  NameModel _nameModel;

  NameController(String name) {
    _nameModel = NameModel(name);
  }

  String get name => _nameModel.name;

  int get buttonCount => _nameModel.name.length;
}
