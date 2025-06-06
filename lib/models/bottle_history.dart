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
      label: json['label']?.toString() ?? '',
      title: json['title']?.toString() ?? '',
      descriptions:
          (json['descriptions'] as List<dynamic>?)
              ?.map((e) => e?.toString() ?? '')
              .toList() ??
          [],
      attachments:
          (json['attachments'] as List<dynamic>?)
              ?.map((e) => e?.toString() ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'label': label,
      'title': title,
      'descriptions': descriptions,
      'attachments': attachments,
    };
  }
}
