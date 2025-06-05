part of '../my_collection.dart';

class BaseView extends StatelessWidget {
  const BaseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.kMediumBgColor,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PageHeading(title: 'My Collection'),
                Image.asset('assets/images/png/notification.png'),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.w, top: 16.h, right: 16.w),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 168 / 313,
                children:
                    [1, 2, 3, 4, 5, 6, 7, 8, 9].map<Widget>((item) {
                      return InkWell(
                        onTap: () {
                          context.go('${AppRoutes.details}/123');
                        },
                        child: Container(
                          color: AppTheme.klightBgColor,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 68,
                                child: Image.asset(
                                  'assets/images/png/bottle.png',
                                ),
                              ),
                              Expanded(
                                flex: 32,
                                child: Container(
                                  padding: EdgeInsets.only(
                                    left: 16.w,
                                    bottom: 16.h,
                                    right: 16.w,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Springbank 1992 #1234',
                                        style: TextStyle(
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w500,
                                          color: AppTheme.kGrey1Color,
                                        ),
                                      ),
                                      Text(
                                        '(112/158)',
                                        style: GoogleFonts.lato(
                                          fontSize: 12.sp,
                                          color: AppTheme.kGrey1Color,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
