part of '../details.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.title, required this.values});

  final String title;
  final List values;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppTheme.kMediumBgColor,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(color: AppTheme.kGrey1Color),
          ),
          4.verticalSpace,
          ...(values.map((e) {
            return Text(
              e,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(color: AppTheme.kGrey1Color),
            );
          }).toList()),
        ],
      ),
    );
  }
}
