part of '../details.dart';

class BaseView extends StatelessWidget {
  const BaseView({super.key});

  @override
  Widget build(BuildContext context) {
    _ScreenState state = _ScreenState.s(context, true);

    return PixelfieldBackground(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: AppTheme.kDarkbgColor,
                    padding: EdgeInsets.symmetric(
                      vertical: 4.h,
                      horizontal: 8.w,
                    ),
                    child: Text(
                      'Genesis Collection',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppTheme.kGrey1Color,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(13.2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppTheme.kDarkbgColor,
                    ),
                    child: Icon(
                      Icons.close,
                      color: AppTheme.kGrey1Color,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              padding: EdgeInsets.all(8),
              color: AppTheme.kDarkbgColor,
              child: Row(
                children: [
                  Image.asset('assets/images/png/genuine_icon.png'),
                  8.horizontalSpace,
                  Text(
                    'Genuine Bottle (Unopened)',
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
