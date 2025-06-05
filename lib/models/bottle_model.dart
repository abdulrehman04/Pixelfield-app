import 'package:pixelfield_test_project/models/bottle_details.dart';
import 'package:pixelfield_test_project/models/bottle_history.dart';
import 'package:pixelfield_test_project/models/tasting_notes.dart';

class Bottle {
  final String image;
  final String bottleNumber;
  final String name;
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
  });

  factory Bottle.fromJson(Map<String, dynamic> json) {
    return Bottle(
      image: json['image'],
      bottleNumber: json['bottleNumber'],
      name: json['name'],
      age: json['age'],
      id: json['id'],
      status: json['status'] ?? 'Opened',
      details: BottleDetails.fromJson(json['details']),
      tastingNotes: TastingNotes.fromJson(json['tastingNotes']),
      history:
          (json['history'] as List)
              .map((e) => BottleHistory.fromJson(e))
              .toList(),
    );
  }
}
