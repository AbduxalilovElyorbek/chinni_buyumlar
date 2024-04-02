import 'package:chinni_buyumlar/app/constants/imports.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    this.func,
    required this.start,
    required this.end,
  });
  final String text;
  final VoidCallback? func;
  final Alignment start;
  final Alignment end;

  @override
  Widget build(BuildContext context) {
    LinearGradient backgroundColor = LinearGradient(
      begin: start,
      end: end,
      colors: [
        green,
        lightGreen,
      ],
    );

    return InkWell(
      onTap: func,
      child: Container(
        height: 43.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            18.r,
          ),
          gradient: backgroundColor,
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: white,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
      ),
    );
  }
}
