import 'dart:convert';
import 'package:flutter/services.dart' as rootBundle;
import 'package:flutter/services.dart';
import 'model.dart';

class service {
  Future<ClassDetails> readJsonData() async {
    final jsondata = await rootBundle.rootBundle.loadString('assets/school.json');
    final data = classDetailsFromJson(jsondata);
    print(data.items.first.detailOfStudents);
    return data;
  }
}
