part of '../details.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({
    super.key,
    this.isFirstItem = false,
    required this.history,
  });

  final bool isFirstItem;
  final BottleHistory history;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        color: AppTheme.kMediumBgColor,
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4, left: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  isFirstItem
                      ? 24.verticalSpace
                      : SizedBox(
                        height: 24.h,
                        child: VerticalDivider(color: AppTheme.kPrimaryColor),
                      ),
                  Container(
                    height: 24.h,
                    width: 24.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppTheme.kGrey1Color,
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 15.w,
                      child: Stack(
                        children: [
                          VerticalDivider(color: AppTheme.kPrimaryColor),
                          Center(
                            child: Image.asset('assets/images/png/accents.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            24.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  16.verticalSpace,
                  Text(
                    history.label,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppTheme.kGrey1Color,
                    ),
                  ),
                  8.verticalSpace,
                  Text(
                    history.title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: AppTheme.kGrey1Color,
                    ),
                  ),
                  8.verticalSpace,
                  ...(history.descriptions.map((e) {
                    return Text(
                      'Description',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppTheme.kGrey1Color,
                      ),
                    );
                  }).toList()),
                  8.verticalSpace,

                  // Attachments
                  Container(
                    color: AppTheme.kDarkbgColor,
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.attachment_sharp,
                              color: AppTheme.kGrey1Color,
                            ),
                            8.horizontalSpace,
                            Text(
                              'Attachments',
                              style: Theme.of(context).textTheme.bodySmall
                                  ?.copyWith(color: AppTheme.kGrey1Color),
                            ),
                          ],
                        ),
                        8.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:
                              history.attachments.map((e) {
                                return Container(
                                  height: 64,
                                  width: 64,
                                  color: AppTheme.kGrey1Color,
                                );
                              }).toList(),
                        ),
                      ],
                    ),
                  ),
                  16.verticalSpace,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
