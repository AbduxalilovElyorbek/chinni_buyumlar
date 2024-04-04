import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:chinni_buyumlar/app/ui/screens/orders/parts/list.dart';
import 'package:flutter/material.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  late bool _isActive = false;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const BackWidget(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Text(
              "Мои заказы",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            SizedBox(
              height: 20.h,
            ),
            TabBar(
              controller: _controller,
              dividerColor: transparent,
              splashBorderRadius: BorderRadius.circular(45.r),
              indicatorColor: transparent,
              onTap: (value) {
                _isActive = !_isActive;
                setState(() {});
              },
              tabs: [
                Tab(
                  child: Container(
                    height: 50.h,
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      vertical: 10.h,
                      horizontal: 35.w,
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 0.0),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                          color: shadow.withOpacity(0.25),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(
                        45.r,
                      ),
                      gradient: _isActive
                          ? LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                lightGreen,
                                green,
                              ],
                            )
                          : null,
                    ),
                    child: Center(
                      child: Text(
                        "Активные",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: _isActive ? white : greyText,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    height: 50.h,
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      vertical: 10.h,
                      horizontal: 35.w,
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 0.0),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                          color: shadow.withOpacity(0.25),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(
                        45.r,
                      ),
                      gradient: !_isActive
                          ? LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                lightGreen,
                                green,
                              ],
                            )
                          : null,
                    ),
                    child: Center(
                      child: Text(
                        "История",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: !_isActive ? white : greyText,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: _controller,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: const OrderList(),
                  ),
                  OrderItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
