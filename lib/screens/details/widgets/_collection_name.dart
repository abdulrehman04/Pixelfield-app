part of '../details.dart';

class CollectionName extends StatelessWidget {
  const CollectionName({super.key, required this.collectionName});

  final String collectionName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: AppTheme.kDarkbgColor,
            padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
            child: Text(
              collectionName,
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(color: AppTheme.kGrey1Color),
            ),
          ),
          InkWell(
            onTap: () {
              context.go(AppRoutes.myCollection);
            },
            child: Container(
              padding: EdgeInsets.all(13.2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppTheme.kDarkbgColor,
              ),
              child: Icon(Icons.close, color: AppTheme.kGrey1Color, size: 24),
            ),
          ),
        ],
      ),
    );
  }
}
