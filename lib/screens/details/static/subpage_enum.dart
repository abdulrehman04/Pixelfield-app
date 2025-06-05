enum SubpageEnum {
  details,
  tastingNotes,
  history;

  String get label {
    switch (this) {
      case SubpageEnum.tastingNotes:
        return 'Tasting Notes';
      case SubpageEnum.details:
        return 'Details';
      case SubpageEnum.history:
        return 'History';
    }
  }
}
