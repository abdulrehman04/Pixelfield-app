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
    required this.bottleNumber,
    required this.name,
    required this.age,
    required this.id,
    required this.details,
    required this.tastingNotes,
    required this.history,
    required this.status,
    required this.largeImage,
    required this.year,
  });

  factory Bottle.fromJson(Map<String, dynamic> json) {
    return Bottle(
      image: json['image'],
      bottleNumber: json['bottleNumber'],
      name: json['name'],
      age: json['age'],
      id: json['id'],
      year: json['year'],
      status: json['status'] ?? 'Opened',
      details: BottleDetails.fromJson(json['details']),
      tastingNotes: TastingNotes.fromJson(json['tastingNotes']),
      largeImage: json['largeImg'],
      history:
          (json['history'] as List)
              .map((e) => BottleHistory.fromJson(e))
              .toList(),
    );
  }
}
