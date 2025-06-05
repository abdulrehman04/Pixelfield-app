part of '../details.dart';

class TastingNotesSubview extends StatelessWidget {
  const TastingNotesSubview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 233.h,
          color: AppTheme.kDarkbgColor,
          child: Center(
            child: Icon(Icons.play_arrow, color: Colors.white, size: 24.h),
          ),
        ),
        20.verticalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tasting Notes',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: AppTheme.kGrey1Color),
            ),
            4.verticalSpace,
            Text(
              'by Charles MacLean MBE',
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(color: AppTheme.kGrey2Color),
            ),
          ],
        ),
        12.verticalSpace,
        Column(
          children: [
            NoteItem(
              title: 'Nose',
              values: ['Description', 'Description', 'Description'],
            ),
            8.verticalSpace,
            NoteItem(
              title: 'Palate',
              values: ['Description', 'Description', 'Description'],
            ),
            8.verticalSpace,
            NoteItem(
              title: 'Finish',
              values: ['Description', 'Description', 'Description'],
            ),
          ],
        ),
        18.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Your Notes',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: AppTheme.kGrey1Color),
            ),
            Icon(Icons.arrow_back, color: AppTheme.kGrey1Color),
          ],
        ),
        18.verticalSpace,
        Column(
          children: [
            NoteItem(
              title: 'Nose',
              values: ['Description', 'Description', 'Description'],
            ),
            8.verticalSpace,
            NoteItem(
              title: 'Palate',
              values: ['Description', 'Description', 'Description'],
            ),
            8.verticalSpace,
            NoteItem(
              title: 'Finish',
              values: ['Description', 'Description', 'Description'],
            ),
          ],
        ),
      ],
    );
  }
}
