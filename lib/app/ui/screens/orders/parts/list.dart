import 'package:chinni_buyumlar/app/constants/imports.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 10.h,
        );
      },
      itemBuilder: (context, index) {
        return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OrderItem(),
                ),
              );
            },
            child: const OrdersItem());
      },
    );
  }
}
