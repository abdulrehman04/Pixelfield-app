class BottleHistory {
  final String label;
  final String title;
  final List<String> descriptions;
  final List<String> attachments;

  BottleHistory({
    required this.label,
    required this.title,
    required this.descriptions,
    required this.attachments,
  });

  factory BottleHistory.fromJson(Map<String, dynamic> json) {
    return BottleHistory(
      label: json['label'],
      title: json['title'],
      descriptions: List<String>.from(json['descriptions']),
      attachments: List<String>.from(json['attachments']),
    );
  }
}
