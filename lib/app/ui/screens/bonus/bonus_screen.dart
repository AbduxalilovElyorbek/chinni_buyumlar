import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:easy_localization/easy_localization.dart';

class BonusScreen extends StatelessWidget {
  const BonusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const BackWidget(),
        title: Text(
          LocaleKeys.notifications.tr(),
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Container(
              height: 70.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10.r,
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    lightGreen,
                    green,
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    AppIcons.discount,
                    colorFilter: ColorFilter.mode(
                      white,
                      BlendMode.srcIn,
                    ),
                  ),
                  Text(
                    "${LocaleKeys.account_bonuses.tr()}: 47",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: white,
                        ),
                  ),
                  const SizedBox(),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              LocaleKeys.today.tr(),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: lightGreyText,
                  ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const BonusItem(),
            SizedBox(
              height: 20.h,
            ),
            Text(
              LocaleKeys.yesterday.tr(),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: lightGreyText,
                  ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const BonusItem(),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
