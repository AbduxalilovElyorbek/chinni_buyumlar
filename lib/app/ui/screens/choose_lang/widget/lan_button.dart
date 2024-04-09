import 'package:chinni_buyumlar/app/constants/imports.dart';

class ChooseLanButton extends StatelessWidget {
  const ChooseLanButton({
    super.key,
    required this.icon,
    required this.title,
    required this.isActive,
    this.func,
  });
  final String icon;
  final String title;
  final bool isActive;
  final VoidCallback? func;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(45.r),
      onTap: func,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            45.r,
          ),
          border: isActive
              ? Border.all(
                  color: lightGreen,
                  width: 2.w,
                )
              : Border.all(
                  color: transparent,
                  width: 2.w,
                ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 6.h,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
            ),
            SizedBox(
              width: 4.w,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 18.sp,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
