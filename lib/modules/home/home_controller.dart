import 'package:flutter/material.dart';
import 'package:flutter_architecture/modules/home/models/count_model.dart';

class HomeController {
  var valueNotifier = ValueNotifier(CountModel(value: 0));

  void increment() {
    valueNotifier.value =
        valueNotifier.value.copyWith(value: valueNotifier.value.value + 1);
  }
}
