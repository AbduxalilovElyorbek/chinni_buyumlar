import 'package:chinni_buyumlar/app/constants/imports.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool isChoosed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isChoosed = !isChoosed;
        setState(() {});
      },
      child: Container(
        height: 44.h,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: isChoosed ? green : transparent,
        ),
        child: SvgPicture.asset(
          AppIcons.heart,
        ),
      ),
    );
  }
}
