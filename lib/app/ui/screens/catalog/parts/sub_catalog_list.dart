import 'package:chinni_buyumlar/app/constants/imports.dart';

class SubCatalogList extends StatelessWidget {
  const SubCatalogList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: transparent,
        elevation: 0,
        surfaceTintColor: transparent,
        automaticallyImplyLeading: false,
        leading: const BackWidget(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Осветительные приборы",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
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
                    return const CatalogItem(
                      text: "Кафельная Плитка",
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
