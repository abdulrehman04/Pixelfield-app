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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              padding: EdgeInsets.all(8),
              color: AppTheme.kDarkbgColor,
              child: Row(
                children: [
                  Image.asset('assets/images/png/genuine_icon.png'),
                  8.horizontalSpace,
                  Text(
                    bottle.status,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppTheme.kGrey1Color,
                    ),
                  ),
                  Spacer(),
                  Image.asset('assets/images/png/down_arrow.png'),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: 39.h, horizontal: 34.w),
              child: Image.asset(
                'assets/images/png/bottle_large.png',
                fit: BoxFit.cover,
              ),
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
                      'Bottle 112/158',
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
                        TextSpan(text: 'Talisker '),
                        TextSpan(
                          text: '18 years old ',
                          style: TextStyle(color: AppTheme.kPrimaryColor),
                        ),
                        TextSpan(text: '#2504'),
                      ],
                    ),
                  ),
                  24.verticalSpace,
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppTheme.kMediumBgColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        children:
                            SubpageEnum.values.map((e) {
                              return Expanded(
                                child: InkWell(
                                  onTap: () {
                                    state.setSubPage(e);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color:
                                          state.subpage == e
                                              ? AppTheme.kPrimaryColor
                                              : null,
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      vertical: 6.h,
                                    ),
                                    child: Center(
                                      child: Text(
                                        e.label,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodySmall?.copyWith(
                                          color:
                                              state.subpage != e
                                                  ? AppTheme.kDisabledGreyColor
                                                  : AppTheme.kDarkbgColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                      ),
                    ),
                  ),
                  24.verticalSpace,
                  state.getSubPage(),
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
