part of './details.dart';

class _ScreenState extends ChangeNotifier {
  static _ScreenState s(BuildContext context, [listen = false]) =>
      Provider.of<_ScreenState>(context, listen: listen);

  SubpageEnum subpage = SubpageEnum.Details;

  setSubPage(SubpageEnum page) {
    subpage = page;
    notifyListeners();
  }

  getSubPage() {
    switch (subpage) {
      case SubpageEnum.Details:
        return DetailsSubPage();
      case SubpageEnum.Tasting_Notes:
        return TastingNotesSubview();
      case SubpageEnum.History:
        return DetailsSubPage();
    }
  }
}
