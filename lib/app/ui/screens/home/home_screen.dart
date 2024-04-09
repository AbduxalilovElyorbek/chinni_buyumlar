import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const SearchTextFieldWidget(),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: SvgPicture.asset(AppIcons.notifications),
                onPressed: () {},
              ),
              Positioned(
                right: 4.0,
                top: 5.0,
                child: Container(
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    color: orange,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  width: 19.w,
                  child: Text(
                    '5',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: white,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListWidget(
              showDiscount: true,
              title: LocaleKeys.popular_products.tr(),
              func: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PressedScreen(
                      title: LocaleKeys.popular_products.tr(),
                      type: "product",
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 15.h,
            ),
            const CategoriesList(),
            SizedBox(
              height: 15.h,
            ),
            ListWidget(
              title: LocaleKeys.discount_products.tr(),
              color: orange,
              showDiscount: true,
              hasDiscount: "-10%",
              func: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PressedScreen(
                      title: LocaleKeys.discount_products.tr(),
                      type: "product",
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 15.h,
            ),
            ListWidget(
              showDiscount: true,
              title: LocaleKeys.new_products.tr(),
              color: lightGreen,
              hasDiscount: "Новый",
              func: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PressedScreen(
                      title: LocaleKeys.new_products.tr(),
                      type: "product",
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 15.h,
            ),
            ListWidget(
              showDiscount: false,
              title: LocaleKeys.order_products.tr(),
              color: lightGreen,
              hasDiscount: "Под заказ",
              func: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  PressedScreen(
                      title: LocaleKeys.order_products.tr(),
                      type: "product",
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 15.h,
            ),
            MarketsListWidget(
              title: LocaleKeys.popular_markets.tr(),
              func: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PressedScreen(
                      title: LocaleKeys.popular_markets.tr(),
                      type: "markets",
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 15.h,
            ),
            NewsListWidget(
              title: LocaleKeys.news.tr(),
              func: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PressedScreen(
                      title: LocaleKeys.news.tr(),
                      type: "news",
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).padding.bottom + 40.h,
            ),
          ],
        ),
      ),
    );
  }
}
