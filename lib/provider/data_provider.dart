import 'package:flutter/material.dart';
import 'package:storedata/data/data_helper.dart';

class DataPrvider extends ChangeNotifier {
  String name = '';

  asignValue(value) {
    name = value;
    notifyListeners();
  }

  showValue() {
    name = UserSimplePreferences.getData() ?? '';
  }
}
