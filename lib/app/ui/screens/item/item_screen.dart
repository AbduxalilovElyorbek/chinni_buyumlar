import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:chinni_buyumlar/app/ui/screens/item/comments_screen.dart';
import 'package:chinni_buyumlar/app/ui/screens/item/widgets/star_rating.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  late int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  const CaruselList(),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: SvgPicture.asset(
                            AppIcons.arrowBack,
                            colorFilter:
                                ColorFilter.mode(white, BlendMode.srcIn),
                          ),
                        ),
                        const FavoriteWidget(),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Артикул: 34579",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: lightGreyText,
                          ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: red,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.w,
                        vertical: 5.h,
                      ),
                      child: Text(
                        "Нет в наличии",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: white,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  "A55 MORENA",
                  style: Theme.of(context).textTheme.titleLarge!,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                color: greyText.withOpacity(0.5),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "3.600.000 UZS",
                      style: Theme.of(context).textTheme.titleMedium!,
                    ),
                    Text(
                      "4.500.000 сум",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 18.sp,
                            color: lightGreyText,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: lightGreyText,
                          ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: greyText.withOpacity(0.5),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Магазин",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: pressedColor,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 18.w,
                        vertical: 5.h,
                      ),
                      child: Text(
                        "Название",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: dark,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                color: greyText.withOpacity(0.5),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Параметры",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      "Цвет:",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: lightGreyText,
                          ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      children: [
                        ItemButton(
                          title: "Черный",
                          color: index == 0 ? green : lightGreyText,
                          func: () {
                            index = 0;
                            setState(() {});
                          },
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        ItemButton(
                          title: "Белый",
                          color: index == 1 ? green : lightGreyText,
                          func: () {
                            index = 1;
                            setState(() {});
                          },
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        ItemButton(
                          title: "Серый",
                          color: index == 2 ? green : lightGreyText,
                          func: () {
                            index = 2;
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: greyText.withOpacity(0.5),
              ),
              const DropDownItem(
                title: "Описание",
                functions: [],
              ),
              Divider(
                color: greyText.withOpacity(0.5),
              ),
              DropDownItem(
                title: "Характеристики",
                functions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Габариты:",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: lightGreyText,
                            ),
                      ),
                      Text(
                        "диаметр и высота",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Мощность:",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: lightGreyText,
                            ),
                      ),
                      Text(
                        "ват",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Патрон:",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: lightGreyText,
                            ),
                      ),
                      Text(
                        "E27 или E14",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Вольт:",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: lightGreyText,
                            ),
                      ),
                      Text(
                        "220V",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Лампы в комплекте:",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: lightGreyText,
                            ),
                      ),
                      Text(
                        "Да",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Материал:",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: lightGreyText,
                            ),
                      ),
                      Text(
                        "Да",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Вес:",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: lightGreyText,
                            ),
                      ),
                      Text(
                        "Вес",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Площадь освещения::",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: lightGreyText,
                            ),
                      ),
                      Text(
                        "Площадь",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
              Divider(
                color: greyText.withOpacity(0.5),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Оценка и отзывы (2)",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    const StarRating(),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CommentsScreen(),
                          ),
                        );
                      },
                      icon: SvgPicture.asset(
                        AppIcons.arrowForward,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: greyText.withOpacity(0.5),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Бренд:",
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                          ),
                          TextSpan(
                            text: " Chiaro",
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w700,
                                      color: lightGreyText,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      AppImages.radius,
                      width: 80.w,
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                ),
              ),
              Divider(
                color: greyText.withOpacity(0.5),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Text(
                  "C этим товаром ищут",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: const GridListWidget(type: "product"),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        45.r,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          green,
                          lightGreen,
                        ],
                      ),
                    ),
                    child: Center(
                      child: SizedBox(
                        width: 120.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "В корзину",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: white,
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                            SvgPicture.asset(
                              AppIcons.shop,
                              colorFilter: ColorFilter.mode(
                                white,
                                BlendMode.srcIn,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: const ButtonBorderedWidget(
                  text: "Связаться с продавцом",
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).padding.bottom + 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
