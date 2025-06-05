import 'dart:convert';
import 'package:flutter/services.dart';

const collectionPath = 'assets/json/collection.json';

class API {
  Future<dynamic> readJsonFile(String path) async {
    String content = await rootBundle.loadString(path);
    Map<String, dynamic> data = jsonDecode(content);
    return data['collection'];
  }

  Future<dynamic> fetchCollection() async {
    return await readJsonFile(collectionPath);
  }
}
