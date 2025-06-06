import 'package:pixelfield_test_project/models/bottle_model.dart';

class CollectionModel {
  final String collectionName;
  final List<Bottle> bottles;

  CollectionModel({required this.collectionName, required this.bottles});

  factory CollectionModel.fromJson(Map<String, dynamic> json) {
    return CollectionModel(
      collectionName: json['collectionName']?.toString() ?? '',
      bottles:
          (json['bottles'] as List<dynamic>?)
              ?.map(
                (bottle) =>
                    Bottle.fromJson(bottle as Map<String, dynamic>? ?? {}),
              )
              .toList() ??
          [],
    );
  }

  CollectionModel copyWith({String? collectionName, List<Bottle>? bottles}) {
    return CollectionModel(
      collectionName: collectionName ?? this.collectionName,
      bottles: bottles ?? this.bottles,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'collectionName': collectionName,
      'bottles': bottles.map((x) => x.toMap()).toList(),
    };
  }

  factory CollectionModel.fromMap(Map<String, dynamic> map) {
    return CollectionModel(
      collectionName: map['collectionName']?.toString() ?? '',
      bottles:
          (map['bottles'] as List<dynamic>?)
              ?.map((x) => Bottle.fromJson(x as Map<String, dynamic>? ?? {}))
              .toList() ??
          [],
    );
  }
}
