enum SubpageEnum {
  Details,
  Tasting_Notes,
  History;

  String get label {
    switch (this) {
      case SubpageEnum.Tasting_Notes:
        return 'Tasting Notes';
      default:
        return name;
    }
  }
}
