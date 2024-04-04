import 'package:chinni_buyumlar/app/constants/imports.dart';

class ItemButton extends StatelessWidget {
  const ItemButton({
    super.key,
    required this.title,
    required this.color,
    this.func,
  });
  final String title;
  final Color color;
  final VoidCallback? func;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(
        25.r,
      ),
      onTap: func,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 18.w,
          vertical: 8.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            25.r,
          ),
          border: Border.all(
            color: color,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: color,
                ),
          ),
        ),
      ),
    );
  }
}
