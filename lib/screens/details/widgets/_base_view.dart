part of '../details.dart';

class BaseView extends StatelessWidget {
  const BaseView({
    super.key,
    required this.bottle,
    required this.collectionName,
  });

  final Bottle bottle;
  final String collectionName;

  @override
  Widget build(BuildContext context) {
    _ScreenState state = _ScreenState.s(context, true);

    return PixelfieldBackground(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CollectionName(collectionName: collectionName),
            BottleStatus(status: bottle.status),
            Container(
              padding: EdgeInsets.symmetric(vertical: 39.h, horizontal: 34.w),
              child: Image.asset(bottle.largeImage, fit: BoxFit.cover),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              color: AppTheme.klightBgColor,
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Bottle ${bottle.bottleNumber}',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppTheme.kGrey2Color,
                      ),
                    ),
                  ),
                  8.verticalSpace,
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headlineLarge
                          ?.copyWith(color: AppTheme.kGrey1Color),
                      children: [
                        TextSpan(text: '${bottle.name} '),
                        TextSpan(
                          text: '${bottle.age} ',
                          style: TextStyle(color: AppTheme.kPrimaryColor),
                        ),
                        TextSpan(text: '#${bottle.id}'),
                      ],
                    ),
                  ),
                  24.verticalSpace,
                  SubpageRow(),
                  24.verticalSpace,
                  state.getSubPage(bottle),
                ],
              ),
            ),
            31.verticalSpace,
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: AppButton(
                label: '+  Add to my collection',
                onPressed: () {},
              ),
            ),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}
