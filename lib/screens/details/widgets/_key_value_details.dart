part of '../details.dart';

class KeyValueDetails extends StatelessWidget {
  const KeyValueDetails({super.key, required this.keyVal, required this.value});

  final String keyVal, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          keyVal,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(color: Colors.white),
        ),
        Text(
          value,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(color: AppTheme.kGrey2Color),
        ),
      ],
    );
  }
}
