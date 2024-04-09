import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:easy_localization/easy_localization.dart';


class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int index = 0;
  int choosedIcon = 0;

  LinearGradient backgroundColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      green,
      lightGreen,
    ],
  );

  final List pages = [
    const HomeScreen(),
    const FavoriteScreen(),
    const BasketScreen(),
    const ProfileScreen(),
    const CatalogScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[index],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.all(8.r),
        child: FloatingActionButton(
          elevation: 0,
          focusColor: transparent,
          backgroundColor: transparent,
          onPressed: () {
            index = 4;
            choosedIcon = 4;

            setState(() {});
          },
          child: Container(
            height: 60.h,
            width: 60.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              gradient: backgroundColor,
            ),
            child: Padding(
              padding: EdgeInsets.all(15.r),
              child: SvgPicture.asset(
                choosedIcon != 4 ? AppIcons.menu : AppIcons.choosedMenu,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: transparent,
      bottomNavigationBar: BottomAppBar(
        color: lightGreen,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomItem(
              icon: choosedIcon != 0 ? AppIcons.home : AppIcons.choosedHome,
              function: () {
                index = 0;
                choosedIcon = 0;

                setState(() {});
              },
              title: LocaleKeys.home.tr(),
            ),
            BottomItem(
              icon: choosedIcon != 1 ? AppIcons.heart : AppIcons.choosedHeart,
              function: () {
                index = 1;
                choosedIcon = 1;

                setState(() {});
              },
              title: LocaleKeys.favorite.tr(),
            ),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            Stack(
              children: [
                BottomItem(
                  icon: choosedIcon != 2
                      ? AppIcons.basket
                      : AppIcons.choosedBasket,
                  function: () {
                    index = 2;
                    choosedIcon = 2;

                    setState(() {});
                  },
                  title: LocaleKeys.basket.tr(),
                ),
                Positioned(
                  right: 1,
                  top: 0,
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
            BottomItem(
              icon:
                  choosedIcon != 3 ? AppIcons.profile : AppIcons.choosedProfile,
              function: () {
                index = 3;
                choosedIcon = 3;

                setState(() {});
              },
              title: LocaleKeys.profile.tr(),
            ),
          ],
        ),
      ),
    );
  }
}
