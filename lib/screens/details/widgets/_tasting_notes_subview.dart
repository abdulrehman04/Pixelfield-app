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
            Container(
              width: double.infinity,
              color: AppTheme.kMediumBgColor,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nose',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: AppTheme.kGrey1Color,
                    ),
                  ),
                  4.verticalSpace,
                  ...(['Description', 'Description', 'Description'].map((e) {
                    return Text(
                      e,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppTheme.kGrey1Color,
                      ),
                    );
                  }).toList()),
                ],
              ),
            ),
            8.verticalSpace,
            Container(
              width: double.infinity,
              color: AppTheme.kMediumBgColor,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Palate',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: AppTheme.kGrey1Color,
                    ),
                  ),
                  4.verticalSpace,
                  ...(['Description', 'Description', 'Description'].map((e) {
                    return Text(
                      e,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppTheme.kGrey1Color,
                      ),
                    );
                  }).toList()),
                ],
              ),
            ),
            8.verticalSpace,
            Container(
              width: double.infinity,
              color: AppTheme.kMediumBgColor,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Finish',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: AppTheme.kGrey1Color,
                    ),
                  ),
                  4.verticalSpace,
                  ...(['Description', 'Description', 'Description'].map((e) {
                    return Text(
                      e,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppTheme.kGrey1Color,
                      ),
                    );
                  }).toList()),
                ],
              ),
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
            Container(
              width: double.infinity,
              color: AppTheme.kMediumBgColor,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nose',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: AppTheme.kGrey1Color,
                    ),
                  ),
                  4.verticalSpace,
                  ...(['Description', 'Description', 'Description'].map((e) {
                    return Text(
                      e,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppTheme.kGrey1Color,
                      ),
                    );
                  }).toList()),
                ],
              ),
            ),
            8.verticalSpace,
            Container(
              width: double.infinity,
              color: AppTheme.kMediumBgColor,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Palate',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: AppTheme.kGrey1Color,
                    ),
                  ),
                  4.verticalSpace,
                  ...(['Description', 'Description', 'Description'].map((e) {
                    return Text(
                      e,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppTheme.kGrey1Color,
                      ),
                    );
                  }).toList()),
                ],
              ),
            ),
            8.verticalSpace,
            Container(
              width: double.infinity,
              color: AppTheme.kMediumBgColor,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Finish',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: AppTheme.kGrey1Color,
                    ),
                  ),
                  4.verticalSpace,
                  ...(['Description', 'Description', 'Description'].map((e) {
                    return Text(
                      e,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppTheme.kGrey1Color,
                      ),
                    );
                  }).toList()),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
