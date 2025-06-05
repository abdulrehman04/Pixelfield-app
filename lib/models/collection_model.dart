import 'package:pixelfield_test_project/models/bottle_model.dart';

class CollectionModel {
  final String collectionName;
  final List<Bottle> bottles;

  CollectionModel({required this.collectionName, required this.bottles});

  factory CollectionModel.fromJson(Map<String, dynamic> json) {
    return CollectionModel(
      collectionName: json['collectionName'],
      bottles:
          (json['bottles'] as List)
              .map((bottle) => Bottle.fromJson(bottle))
              .toList(),
    );
  }
}
