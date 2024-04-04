import 'package:chinni_buyumlar/app/constants/imports.dart';

class PlacingChooseButtonWidget extends StatelessWidget {
  const PlacingChooseButtonWidget({
    super.key,
    required this.title,
    required this.isActive,
    this.func,
  });
  final String title;
  final bool isActive;
  final VoidCallback? func;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Container(
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
          borderRadius: BorderRadius.circular(10.r),
          border: isActive
              ? Border.all(
                  color: grey,
                )
              : null,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 20.h,
          horizontal: 20.w,
        ),
        child: Row(
          children: [
            RadioWidget(
              isCircular: true,
              value: isActive,
            ),
            SizedBox(
              width: 12.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                ),
                Text(
                  "С 9 ноября, от  1.000.000 сум",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: lightGreyText,
                      ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
