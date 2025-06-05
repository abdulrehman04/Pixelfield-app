class TastingNotes {
  final TastingEntry expert;
  final TastingEntry user;

  TastingNotes({required this.expert, required this.user});

  factory TastingNotes.fromJson(Map<String, dynamic> json) {
    return TastingNotes(
      expert: TastingEntry.fromJson(json['expert']),
      user: TastingEntry.fromJson(json['user']),
    );
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
      author: json['author'],
      nose: List<String>.from(json['Nose']),
      palate: List<String>.from(json['Palate']),
      finish: List<String>.from(json['Finish']),
    );
  }
}
