part of './details.dart';

class _ScreenState extends ChangeNotifier {
  static _ScreenState s(BuildContext context, [listen = false]) =>
      Provider.of<_ScreenState>(context, listen: listen);

  SubpageEnum subpage = SubpageEnum.details;

  setSubPage(SubpageEnum page) {
    subpage = page;
    notifyListeners();
  }

  getSubPage(Bottle bottle) {
    switch (subpage) {
      case SubpageEnum.details:
        return DetailsSubPage(details: bottle.details);
      case SubpageEnum.tastingNotes:
        return TastingNotesSubview(notes: bottle.tastingNotes);
      case SubpageEnum.history:
        return HistorySubview(history: bottle.history);
    }
  }
}
