import 'package:chinni_buyumlar/app/constants/imports.dart';

class CatalogItem extends StatelessWidget {
  const CatalogItem({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 110.w,
            height: 110.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              image: DecorationImage(
                image: AssetImage(
                  AppImages.category,
                ),
                fit: BoxFit.cover,
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
