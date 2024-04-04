import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:chinni_buyumlar/app/ui/screens/catalog/parts/sub_catalog_list.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key, this.isSub});
  final bool? isSub;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisExtent: 150.h,
          crossAxisSpacing: 10.h,
          mainAxisSpacing: 10.w,
        ),
        itemCount: 8,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              isSub != null
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PressedScreen(
                          title: "Люстры для гостиной",
                          type: "product",
                        ),
                      ),
                    )
                  : Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SubCatalogList(),
                      ),
                    );
            },
            child: const CatalogItem(
              text: "Кафельная Плитка",
            ),
          );
        },
      ),
    );
  }
}
