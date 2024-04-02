import 'package:chinni_buyumlar/app/constants/imports.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget(
      {super.key, required this.text, required this.isHigh});
  final String text;
  final bool isHigh;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isHigh ? 180.w : 115.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: isHigh ? 170.h : 110.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              image: DecorationImage(
                image: AssetImage(
                  AppImages.category,
                ),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SizedBox(
            width: 90.w,
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
