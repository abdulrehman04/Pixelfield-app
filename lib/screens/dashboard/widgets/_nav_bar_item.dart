part of '../dashboard.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.img,
    required this.title,
    this.isSelected = false,
    this.onTap,
  });
  final String img, title;
  final bool isSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 80.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/png/$img.png',
              color: isSelected ? Colors.white : AppTheme.kDisabledGreyColor,
            ),
            8.verticalSpace,
            Text(
              title,
              style: GoogleFonts.lato(
                color: isSelected ? Colors.white : AppTheme.kDisabledGreyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
