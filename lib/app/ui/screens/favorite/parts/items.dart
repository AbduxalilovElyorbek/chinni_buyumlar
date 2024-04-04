import 'package:chinni_buyumlar/app/constants/imports.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        itemCount: 5,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(
          height: 10.h,
        ),
        itemBuilder: (context, index) => const FavoriteItem(),
      ),
    );
  }
}
