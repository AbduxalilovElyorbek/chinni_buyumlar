import 'package:chinni_buyumlar/app/constants/imports.dart';

class ProfileNavigationItem extends StatelessWidget {
  const ProfileNavigationItem({
    super.key,
    required this.title,
    required this.icon, this.func,
  });
  final String title;
  final String icon;
  final VoidCallback? func;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Container(
        padding: EdgeInsets.all(15.r),
        width: double.infinity,
        decoration: BoxDecoration(
          color: white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0.0),
              blurRadius: 10.0,
              spreadRadius: 2.0,
              color: shadow.withOpacity(0.25),
            ),
          ],
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  icon,
                ),
                SizedBox(
                  width: 18.sp,
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AppIcons.arrowForward,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
