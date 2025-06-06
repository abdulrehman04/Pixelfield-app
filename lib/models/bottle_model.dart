import 'package:pixelfield_test_project/models/bottle_details.dart';
import 'package:pixelfield_test_project/models/bottle_history.dart';
import 'package:pixelfield_test_project/models/tasting_notes.dart';

class Bottle {
  final String image;
  final String largeImage;
  final String bottleNumber;
  final String name;
  final String year;
  final String age;
  final String id;
  final BottleDetails details;
  final TastingNotes tastingNotes;
  final List<BottleHistory> history;
  final String status;

  Bottle({
    required this.image,
    required this.largeImage,
    required this.bottleNumber,
    required this.name,
    required this.year,
    required this.age,
    required this.id,
    required this.details,
    required this.tastingNotes,
    required this.history,
    required this.status,
  });

  factory Bottle.fromJson(Map<String, dynamic> json) {
    return Bottle(
      image: json['image']?.toString() ?? '',
      largeImage:
          json['largeImage']?.toString() ?? json['largeImg']?.toString() ?? '',
      bottleNumber: json['bottleNumber']?.toString() ?? '',
      name: json['name']?.toString() ?? '',
      year: json['year']?.toString() ?? '',
      age: json['age']?.toString() ?? '',
      id: json['id']?.toString() ?? '',
      status: json['status']?.toString() ?? 'Opened',
      details: BottleDetails.fromJson(
        json['details'] as Map<String, dynamic>? ?? {},
      ),
      tastingNotes: TastingNotes.fromJson(
        json['tastingNotes'] as Map<String, dynamic>? ?? {},
      ),
      history:
          (json['history'] as List<dynamic>?)
              ?.map(
                (e) => BottleHistory.fromJson(e as Map<String, dynamic>? ?? {}),
              )
              .toList() ??
          [],
    );
  }

  Bottle copyWith({
    String? image,
    String? largeImage,
    String? bottleNumber,
    String? name,
    String? year,
    String? age,
    String? id,
    BottleDetails? details,
    TastingNotes? tastingNotes,
    List<BottleHistory>? history,
    String? status,
  }) {
    return Bottle(
      image: image ?? this.image,
      largeImage: largeImage ?? this.largeImage,
      bottleNumber: bottleNumber ?? this.bottleNumber,
      name: name ?? this.name,
      year: year ?? this.year,
      age: age ?? this.age,
      id: id ?? this.id,
      details: details ?? this.details,
      tastingNotes: tastingNotes ?? this.tastingNotes,
      history: history ?? this.history,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'largeImage': largeImage,
      'bottleNumber': bottleNumber,
      'name': name,
      'year': year,
      'age': age,
      'id': id,
      'details': details.toMap(),
      'tastingNotes': tastingNotes.toMap(),
      'history': history.map((x) => x.toMap()).toList(),
      'status': status,
    };
  }
}
