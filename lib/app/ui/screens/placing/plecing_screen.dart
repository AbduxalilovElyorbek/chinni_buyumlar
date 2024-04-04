import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:chinni_buyumlar/app/ui/screens/placing/choose_place.dart';

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
                "Оформление заказа",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Text(
                "Способ доставки",
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
                title: "Пункты выдачи",
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
                title: "Доставка курьером",
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
                "Пункт самовывоза",
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
                text: "Выбрать пункт самовызова",
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
                    Text(
                      "Срок доставки будет расчитан после выбора\nпункт самовывоза",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: lightGreyText,
                            fontWeight: FontWeight.w400,
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
                "Получатель",
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
                          "Получать буду не я",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: lightGreyText,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        Switch(
                          onChanged: (value) {
                            _isActive = !_isActive;
                            setState(() {});
                          },
                          activeTrackColor: border,
                          activeColor: switcherColor,
                          inactiveTrackColor: border,
                          value: _isActive,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Тариф доставки",
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
                      "Логистическая компания",
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
                        "Компания",
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Тип оплаты",
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
                        "Наличные",
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Бонусами",
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
                      "Наименование учреждения",
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
                      "Имя",
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
                      "Фамилия",
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
                      "Номер телефона",
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
                      title: "+ Дополнительный номер телефона",
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
                text: "Оформить заказ",
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
