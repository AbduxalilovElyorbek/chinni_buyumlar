import 'package:chinni_buyumlar/app/constants/imports.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        itemCount: 5,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10.h,
          );
        },
        itemBuilder: (context, index) {
          return const OrderItem();
        },
      ),
    );
  }
}
