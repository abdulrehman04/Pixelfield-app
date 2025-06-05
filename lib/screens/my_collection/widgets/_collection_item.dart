part of '../my_collection.dart';

class CollectionItem extends StatelessWidget {
  const CollectionItem({super.key, required this.item, this.onTap});

  final Bottle item;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: AppTheme.klightBgColor,
        child: Column(
          children: [
            Expanded(flex: 68, child: Image.asset(item.image)),
            Expanded(
              flex: 32,
              child: Container(
                padding: EdgeInsets.only(left: 16.w, bottom: 16.h, right: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${item.name} ${item.year} #${item.id}',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: AppTheme.kGrey1Color,
                      ),
                    ),
                    Text(
                      '(${item.bottleNumber})',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
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
  }
}
