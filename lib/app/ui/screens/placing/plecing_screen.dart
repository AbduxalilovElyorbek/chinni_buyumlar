import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


class PlacingScreen extends StatefulWidget {
  const PlacingScreen({super.key});

  @override
  State<PlacingScreen> createState() => _PlacingScreenState();
}

class _PlacingScreenState extends State<PlacingScreen> {
  late bool _isChoosed = false;
  late bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const BackWidget(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.placing_order.tr(),
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Text(
                LocaleKeys.delivery_method.tr(),
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 16.sp,
                      color: dropDown,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(
                height: 10.h,
              ),
              PlacingChooseButtonWidget(
                title: LocaleKeys.pickup_point.tr(),
                isActive: _isChoosed,
                func: () {
                  _isChoosed = !_isChoosed;
                  setState(() {});
                },
              ),
              SizedBox(
                height: 8.h,
              ),
              PlacingChooseButtonWidget(
                title: LocaleKeys.courier_delivery.tr(),
                isActive: !_isChoosed,
                func: () {
                  _isChoosed = !_isChoosed;
                  setState(() {});
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                LocaleKeys.pickup_point.tr(),
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 16.sp,
                      color: dropDown,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(
                height: 10.h,
              ),
              ButtonWidget(
                func: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChooseMap(),
                    ),
                  );
                },
                text: LocaleKeys.select_pickup_point.tr(),
                start: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 15.h,
                ),
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
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 325.w,
                      
                      child: Text(
                        LocaleKeys.delivery_time.tr(),
                        maxLines: 2,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: lightGreyText,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      width: 75.w,
                      height: 75.h,
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8.h),
                            child: Image.asset(
                              AppImages.basket,
                              height: 64,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              padding: const EdgeInsets.all(2.0),
                              decoration: BoxDecoration(
                                color: green,
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              width: 20.w,
                              child: Text(
                                '1',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: white,
                                    ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                LocaleKeys.getter.tr(),
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 16.sp,
                      color: dropDown,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 18.h,
                ),
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
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          LocaleKeys.i_am_not_recipient.tr(),
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: lightGreyText,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        SwitcherWidget(
                          borderColor: border,
                          dotColor: switcherColor,
                          isActive: _isActive,
                          func: (value) {
                            _isActive = !_isActive;
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      LocaleKeys.delivery_rate.tr(),
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 16.sp,
                            color: dropDown,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const DropDownButton(
                      items: [
                        "Тариф ( )",
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      LocaleKeys.logistic_company.tr(),
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 16.sp,
                            color: dropDown,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                     DropDownButton(
                      items: [
                        LocaleKeys.company.tr(),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      LocaleKeys.payment_type.tr(),
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 16.sp,
                            color: dropDown,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    DropDownButton(
                      items: [
                        LocaleKeys.cash.tr(),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          LocaleKeys.bonuses.tr(),
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 16.sp,
                                    color: dropDown,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Text(
                          "(47)",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 16.sp,
                                    color: dropDown,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    PlacingFieldWidget(
                      controller: TextEditingController(),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      LocaleKeys.name_institution.tr(),
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 16.sp,
                            color: dropDown,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    PlacingFieldWidget(
                      controller: TextEditingController(),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      LocaleKeys.name.tr(),
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 16.sp,
                            color: dropDown,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    PlacingFieldWidget(
                      controller: TextEditingController(),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      LocaleKeys.surename.tr(),
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 16.sp,
                            color: dropDown,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    PlacingFieldWidget(
                      controller: TextEditingController(),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Email",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 16.sp,
                            color: dropDown,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    PlacingFieldWidget(
                      controller: TextEditingController(),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      LocaleKeys.phone_number.tr(),
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 16.sp,
                            color: dropDown,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    PlacingFieldWidget(
                      controller: TextEditingController(),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    PlecingDropDownWidget(
                      title: LocaleKeys.plus.tr(),
                      functions: [
                        SizedBox(
                          height: 10.h,
                        ),
                        PlacingFieldWidget(
                          controller: TextEditingController(),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              ButtonWidget(
                func: () {
                  Navigator.pop(context);
                },
                text: LocaleKeys.checkout.tr(),
                start: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              SizedBox(
                height: MediaQuery.of(context).padding.bottom + 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
