import 'package:chinni_buyumlar/app/constants/imports.dart';

class GridListWidget extends StatelessWidget {
  const GridListWidget({
    super.key,
    required this.type,
    this.hasNavigator,
    this.hasProducts,
  });
  final String type;
  final bool? hasNavigator;
  final bool? hasProducts;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: type == "categories" ? 3 : 2,
          mainAxisExtent:
              type == "categories" && type == "news" ? 160.h : 320.h,
          crossAxisSpacing: 10.h,
          mainAxisSpacing: 10.w,
        ),
        itemCount: 8,
        itemBuilder: (context, index) {
          if (type == "product") {
            return const SizedBox(
              child: DefItemWidget(
                isDiscount: true,
              ),
            );
          } else if (type == "news") {
            return const NewsItemWidget(
              text: "В текст представили портрет типичного покупателя",
            );
          } else if (type == "markets") {
            return const MarketItemWidget(
              title: "Miss Light",
              subTitle: "Ваш Проводник\nСвета",
            );
          } else if (type == "categories") {
            return InkWell(
              onTap: () {
                hasNavigator != null
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SubdirectoryScreen(
                            title: "Осветительные приборы",
                          ),
                        ),
                      )
                    : hasProducts != null
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PressedScreen(
                                title: "Популярные товары",
                                type: "product",
                              ),
                            ),
                          )
                        : null;
              },
              child: const CategoryItemWidget(
                isHigh: false,
                text: "Осветительные Приборы",
              ),
            );
          }
          return null;
        },
      ),
    );
  }
}
