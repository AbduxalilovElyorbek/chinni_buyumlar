import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:easy_localization/easy_localization.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const BackWidget(),
        title: Text(
          LocaleKeys.message.tr(),
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
              height: 90.h,
              padding: EdgeInsets.symmetric(
                horizontal: 14.w,
                vertical: 14.h,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "10.14.2022",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: lightGreyText,
                            ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        width: 23.w,
                        child: Text(
                          '5',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: white,
                                  ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 290.w,
                    child: Text(
                      "Добрый день. Ваш заказ обработан...",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
