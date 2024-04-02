import 'package:chinni_buyumlar/app/constants/imports.dart';

class RadioWidget extends StatefulWidget {
  const RadioWidget({
    super.key,
  });

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    LinearGradient backgroundColor = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        green,
        lightGreen,
      ],
    );

    return InkWell(
      onTap: () {
        setState(() {
          _value = !_value;
          print(_value);
        });
      },
      child: Container(
        width: 22.w,
        height: 22.h,
        padding: EdgeInsets.all(2.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(
            color: greyText.withOpacity(0.3),
          ),
        ),
        child: (_value)
            ? Container(
                height: 20.h,
                width: 20.w,
                decoration: BoxDecoration(
                  gradient: backgroundColor,
                  borderRadius: BorderRadius.circular(5.r),
                ),
              )
            : null,
      ),
    );
  }
}
