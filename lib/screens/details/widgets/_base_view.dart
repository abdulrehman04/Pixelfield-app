part of '../details.dart';

class BaseView extends StatelessWidget {
  const BaseView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: PixelfieldBackground(
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
                      style: GoogleFonts.lato(
                        fontSize: 12,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
