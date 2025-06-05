part of './details.dart';

class _ScreenState extends ChangeNotifier {
  static _ScreenState s(BuildContext context, [listen = false]) =>
      Provider.of<_ScreenState>(context, listen: listen);

  SubpageEnum subpage = SubpageEnum.Details;

  setSubPage(SubpageEnum page) {
    subpage = page;
    notifyListeners();
  }

  getSubPage(Bottle bottle) {
    switch (subpage) {
      case SubpageEnum.Details:
        return DetailsSubPage(details: bottle.details);
      case SubpageEnum.Tasting_Notes:
        return TastingNotesSubview(notes: bottle.tastingNotes);
      case SubpageEnum.History:
        return HistorySubview(history: bottle.history);
    }
  }
}
