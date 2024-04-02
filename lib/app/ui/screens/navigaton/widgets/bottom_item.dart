import 'package:chinni_buyumlar/app/constants/imports.dart';

class BottomItem extends StatelessWidget {
  const BottomItem({
    super.key,
    required this.icon,
    required this.title,
    required this.function,
  });
  final String icon;
  final String title;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              icon,
              colorFilter: ColorFilter.mode(white, BlendMode.srcIn),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
