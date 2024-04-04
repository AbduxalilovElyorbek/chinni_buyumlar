import 'package:chinni_buyumlar/app/constants/imports.dart';

class CaruselList extends StatefulWidget {
  const CaruselList({super.key});

  @override
  State<CaruselList> createState() => _CaruselListState();
}

class _CaruselListState extends State<CaruselList> {
  late int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: List.generate(
            5,
            (index) => Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AppImages.large,
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          options: CarouselOptions(
            viewportFraction: 1,
            height: 370.h,
            onPageChanged: (index, reason) {
              selectedImage = index;
              setState(() {});
              print("$selectedImage #id");
            },
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            5,
            (index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 8.w),
                width: 35.w,
                height: 3.h,
                decoration: BoxDecoration(
                  color: index == selectedImage ? dark : unselected,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
