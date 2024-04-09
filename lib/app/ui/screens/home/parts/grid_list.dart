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
          crossAxisCount: 2,
          mainAxisExtent: type == "news" ? 160.h : 350.h,
          crossAxisSpacing: 10.h,
          mainAxisSpacing: 10.w,
        ),
        itemCount: 8,
        itemBuilder: (context, index) {
          if (type == "product") {
            return SizedBox(
              height: 400.h,
              child: const DefItemWidget(
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
          }
          return null;
        },
      ),
    );
  }
}
