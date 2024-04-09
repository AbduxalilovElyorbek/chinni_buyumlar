import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:easy_localization/easy_localization.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 10.h,
      ),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(
          15.r,
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0.0),
            blurRadius: 10.0,
            spreadRadius: 2.0,
            color: shadow.withOpacity(0.25),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                AppImages.basket,
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Люстры",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: grey,
                        ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    "KR77",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "1.200.000 ${LocaleKeys.sum.tr()}",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: dark.withOpacity(0.5),
                          decoration: TextDecoration.lineThrough,
                          decorationColor: dark.withOpacity(0.5),
                        ),
                  ),
                  Text(
                    "700.000 ${LocaleKeys.sum.tr()}",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                AppIcons.close,
              ),
              Container(
                padding: EdgeInsets.all(5.r),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5.r,
                    ),
                    border: Border.all(color: green, width: 2.w)),
                child: SvgPicture.asset(
                  AppIcons.shop,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
