part of '../details.dart';

class BottleStatus extends StatelessWidget {
  const BottleStatus({super.key, required this.status});
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.all(8),
      color: AppTheme.kDarkbgColor,
      child: Row(
        children: [
          Image.asset('assets/images/png/genuine_icon.png'),
          8.horizontalSpace,
          Text(
            status,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w700,
              color: AppTheme.kGrey1Color,
            ),
          ),
          Spacer(),
          Image.asset('assets/images/png/down_arrow.png'),
        ],
      ),
    );
  }
}
