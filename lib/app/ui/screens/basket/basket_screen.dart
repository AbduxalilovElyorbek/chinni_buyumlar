import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:chinni_buyumlar/app/ui/screens/placing/plecing_screen.dart';

class BasketScreen extends StatefulWidget {
  const BasketScreen({super.key});

  @override
  State<BasketScreen> createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Корзина",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Детали заказа",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: lightDark,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                    ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                padding: EdgeInsets.all(20.r),
                decoration: BoxDecoration(
                  color: whiteText,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Товары ( 1 )",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: dropDown,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Text(
                          "36.000.000 сум",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: dark,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Доставка",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: dropDown,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Text(
                          "30.000 сум",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: dark,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Итого",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.sp,
                                  ),
                        ),
                        Text(
                          "36.000.000 сум",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: dark,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.sp,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              const BasketListWidget(),
              ButtonWidget(
                func: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const PlacingScreen();
                      },
                    ),
                  );
                },
                text: "Продолжить оформление",
                start: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              SizedBox(height: MediaQuery.of(context).padding.bottom + 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
