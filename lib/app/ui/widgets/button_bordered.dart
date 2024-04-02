import 'package:chinni_buyumlar/app/constants/imports.dart';

class ButtonBorderedWidget extends StatelessWidget {
  const ButtonBorderedWidget({
    super.key,
    required this.text,
    this.icon,
  });
  final String text;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 168.w,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            splashFactory: NoSplash.splashFactory,
            backgroundColor: transparent,
            elevation: 0,
            side: BorderSide(color: green)),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: icon != null
              ? MainAxisAlignment.spaceAround
              : MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: lightGreen,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            icon != null
                ? SvgPicture.asset(
                    icon!,
                    colorFilter: ColorFilter.mode(
                      lightGreen,
                      BlendMode.srcIn,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
