class TastingNotes {
  final TastingEntry expert;
  final TastingEntry user;

  TastingNotes({required this.expert, required this.user});

  factory TastingNotes.fromJson(Map<String, dynamic> json) {
    return TastingNotes(
      expert: TastingEntry.fromJson(
        json['expert'] as Map<String, dynamic>? ?? {},
      ),
      user: TastingEntry.fromJson(json['user'] as Map<String, dynamic>? ?? {}),
    );
  }

  Map<String, dynamic> toMap() {
    return {'expert': expert.toMap(), 'user': user.toMap()};
  }
}

class TastingEntry {
  final String? author;
  final List<String> nose;
  final List<String> palate;
  final List<String> finish;

  TastingEntry({
    this.author,
    required this.nose,
    required this.palate,
    required this.finish,
  });

  factory TastingEntry.fromJson(Map<String, dynamic> json) {
    return TastingEntry(
      author: json['author']?.toString(),
      nose:
          (json['Nose'] as List<dynamic>?)
              ?.map((e) => e?.toString() ?? '')
              .toList() ??
          [],
      palate:
          (json['Palate'] as List<dynamic>?)
              ?.map((e) => e?.toString() ?? '')
              .toList() ??
          [],
      finish:
          (json['Finish'] as List<dynamic>?)
              ?.map((e) => e?.toString() ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toMap() {
    return {'author': author, 'Nose': nose, 'Palate': palate, 'Finish': finish};
  }
}
