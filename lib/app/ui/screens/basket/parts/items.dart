import 'package:chinni_buyumlar/app/constants/imports.dart';

class BasketListWidget extends StatelessWidget {
  const BasketListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 20.h,
          );
        },
        itemBuilder: (context, index) {
          return const BasketItem();
        },
      ),
    );
  }
}
