import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:easy_localization/easy_localization.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const BackWidget(),
        title: Text(
          "Заказ 118",
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${LocaleKeys.produc.tr()}:",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: greyText),
                  ),
                  Text(
                    "2",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
            Divider(
              color: greyText,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${LocaleKeys.amount.tr()}:",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: greyText),
                  ),
                  Text(
                    "7.200.000 ${LocaleKeys.sum.tr()}",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
              child: OrderButtonWidget(
                text: "Завершен",
                color: greyText.withOpacity(0.1),
                textColor: dark,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "10.14.2022. 17:00",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: lightGreyText,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${LocaleKeys.getter.tr()}: ",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: lightGreyText,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        TextSpan(
                          text: "Ройтман Рафаэль\nЕвгеньевич",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${LocaleKeys.phone_number.tr()}: ",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: lightGreyText,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        TextSpan(
                          text: "+998999999999",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${LocaleKeys.address.tr()}: ",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: lightGreyText,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        TextSpan(
                          text: "Чиланзар-7, 37-46",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${LocaleKeys.delivery.tr()}: ",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: lightGreyText,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        TextSpan(
                          text: "Курьером",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${LocaleKeys.payment_type.tr()}: ",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: lightGreyText,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        TextSpan(
                          text: "Наличные",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${LocaleKeys.bonuses.tr()}: ",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: lightGreyText,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        TextSpan(
                          text: "0",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 160.h,
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 20.h,
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
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: grey,
                                ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "KR77",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "1.200.000 ${LocaleKeys.sum.tr()}",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: dark.withOpacity(0.5),
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: dark.withOpacity(0.5),
                                ),
                          ),
                          Text(
                            "700.000 ${LocaleKeys.sum.tr()}",
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ButtonWidget(
                text: LocaleKeys.make_return.tr(),
                start: Alignment.topCenter,
                end: Alignment.bottomCenter,
                func: () {
                  showDialog(
                    context: context,
                    builder: (context) => const LeaveReviewWidget(),
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).padding.bottom + 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
