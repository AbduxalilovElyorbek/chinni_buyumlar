import 'package:chinni_buyumlar/app/constants/imports.dart';

class OrderButtonWidget extends StatelessWidget {
  const OrderButtonWidget({
    super.key,
    required this.text,
    this.func, required this.color, this.textColor,
  });
  final String text;
  final Color color;
  final Color? textColor;
  final VoidCallback? func;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Container(
        height: 55.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            45.r,
          ),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: textColor ?? white,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
      ),
    );
  }
}
