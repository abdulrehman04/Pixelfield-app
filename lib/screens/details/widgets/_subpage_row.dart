part of '../details.dart';

class SubpageRow extends StatelessWidget {
  const SubpageRow({super.key});

  @override
  Widget build(BuildContext context) {
    _ScreenState state = _ScreenState.s(context, true);
    return Container(
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
                            state.subpage == e ? AppTheme.kPrimaryColor : null,
                      ),
                      padding: EdgeInsets.symmetric(vertical: 6.h),
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
    );
  }
}
