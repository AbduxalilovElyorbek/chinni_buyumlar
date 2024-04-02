import 'package:chinni_buyumlar/app/constants/imports.dart';

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
              if (5 > 0)
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
            // ListWidget(
            //   showDiscount: true,
            //   title: "Популярные товары",
            //   func: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const PressedScreen(
            //           title: "Популярные товары",
            //           type: "product",
            //         ),
            //       ),
            //     );
            //   },
            // ),
            SizedBox(
              height: 15.h,
            ),
            // const CategoriesList(),
            // SizedBox(
            //   height: 15.h,
            // ),
            // ListWidget(
            //   title: "Товары со скидкой",
            //   color: orange,
            //   showDiscount: true,
            //   hasDiscount: "-10%",
            //   func: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const PressedScreen(
            //           title: "Товары со скидкой",
            //           type: "product",
            //         ),
            //       ),
            //     );
            //   },
            // ),
            // SizedBox(
            //   height: 15.h,
            // ),
            // ListWidget(
            //   showDiscount: true,
            //   title: "Новые товары",
            //   color: lightGreen,
            //   hasDiscount: "Новый",
            //   func: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const PressedScreen(
            //           title: "Новые товары",
            //           type: "product",
            //         ),
            //       ),
            //     );
            //   },
            // ),
            // SizedBox(
            //   height: 15.h,
            // ),
            // ListWidget(
            //   showDiscount: false,
            //   title: "Товары под заказ",
            //   color: lightGreen,
            //   hasDiscount: "Под заказ",
            //   func: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const PressedScreen(
            //           title: "Товары под заказ",
            //           type: "product",
            //         ),
            //       ),
            //     );
            //   },
            // ),
            // SizedBox(
            //   height: 15.h,
            // ),
            // MarketsListWidget(
            //   title: "Популярные магазины",
            //   func: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const PressedScreen(
            //           title: "Популярные магазины",
            //           type: "markets",
            //         ),
            //       ),
            //     );
            //   },
            // ),
            // SizedBox(
            //   height: 15.h,
            // ),
            // NewsListWidget(
            //   title: "Новости",
            //   func: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const PressedScreen(
            //           title: "Новости",
            //           type: "news",
            //         ),
            //       ),
            //     );
            //   },
            // ),
            SizedBox(
              height: MediaQuery.of(context).padding.bottom + 40.h,
            ),
          ],
        ),
      ),
    );
  }
}
