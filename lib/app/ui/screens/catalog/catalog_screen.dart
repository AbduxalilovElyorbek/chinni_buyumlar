import 'package:chinni_buyumlar/app/constants/imports.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

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
                      borderRadius: BorderRadius.circular(15.r),
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: const SingleChildScrollView(
          child: GridListWidget(
            type: "categories",
            hasNavigator: false,
          ),
        ),
      ),
    );
  }
}
