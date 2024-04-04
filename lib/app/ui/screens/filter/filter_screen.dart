import 'package:chinni_buyumlar/app/constants/imports.dart';
import 'package:chinni_buyumlar/app/ui/screens/filter/widgets/drop_down_button.dart';
import 'package:chinni_buyumlar/app/ui/screens/filter/widgets/field.dart';
import 'package:chinni_buyumlar/app/ui/widgets/back_widget.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  late TextEditingController fromController;
  late TextEditingController toController;
  late double fromValue;
  late double toValue;

  @override
  void initState() {
    fromController = TextEditingController();
    toController = TextEditingController();
    fromValue = 0;
    toValue = 50000.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const BackWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  child: Text(
                    "Фильтры",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                DropDownItem(
                  title: "Валюта",
                  functions: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 20.h, top: 10.h),
                          child: SizedBox(
                            width: 160.w,
                            child: const DropDownButton(
                              items: [
                                "Сум",
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: greyText.withOpacity(0.1),
                ),
                DropDownItem(
                  title: "Цена",
                  functions: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 160.w,
                          child: TextFieldFilter(
                            controller: fromController,
                            text: 'От',
                            func: (text) {
                              final newValue = double.tryParse(text);
                              if (newValue != null) {
                                fromValue = newValue;
                              } else {
                                print('Invalid input: Please enter a number.');
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          width: 160.w,
                          child: TextFieldFilter(
                            controller: toController,
                            text: 'До',
                            func: (text) {
                              final newValue = double.tryParse(text);
                              if (newValue != null) {
                                toValue = newValue;
                              } else {
                                print('Invalid input: Please enter a number.');
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    FlutterSlider(
                      selectByTap: false,
                      trackBar: FlutterSliderTrackBar(
                        activeTrackBarHeight: 10.h,
                        activeTrackBar: BoxDecoration(color: lightGreen),
                      ),
                      tooltip: null,
                      values: [
                        fromValue,
                        toValue,
                      ],
                      handler: FlutterSliderHandler(
                        child: Container(
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: greyText,
                              )),
                          padding: EdgeInsets.all(10.r),
                          child: Container(
                            padding: EdgeInsets.all(5.r),
                            decoration: BoxDecoration(
                                color: lightGreen,
                                borderRadius: BorderRadius.circular(25)),
                          ),
                        ),
                      ),
                      rightHandler: FlutterSliderHandler(
                        child: Container(
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: greyText,
                            ),
                          ),
                          padding: EdgeInsets.all(10.r),
                          child: Container(
                            padding: EdgeInsets.all(5.r),
                            decoration: BoxDecoration(
                                color: lightGreen,
                                borderRadius: BorderRadius.circular(25)),
                          ),
                        ),
                      ),
                      disabled: false,
                      rangeSlider: true,
                      max: 50000,
                      min: 0,
                      onDragging: (handlerIndex, lowerValue, upperValue) {
                        print("$handlerIndex #handlerIndex");
                        print("$lowerValue #lowerValue");
                        setState(() {
                          fromValue = lowerValue;
                          toValue = upperValue;
                          fromController.text = lowerValue.toString();
                          toController.text = upperValue.toString();
                        });
                      },
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                  ],
                ),
                Divider(
                  color: greyText.withOpacity(0.1),
                ),
                const DropDownItem(
                  title: "Стиль",
                  functions: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [],
                    ),
                  ],
                ),
                Divider(
                  color: greyText.withOpacity(0.1),
                ),
                const DropDownItem(
                  title: "Кол-во патронов",
                  functions: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [],
                    ),
                  ],
                ),
                Divider(
                  color: greyText.withOpacity(0.1),
                ),
                const DropDownItem(
                  title: "Цвет",
                  functions: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [],
                    ),
                  ],
                ),
                Divider(
                  color: greyText.withOpacity(0.1),
                ),
                const DropDownItem(
                  title: "Материал",
                  functions: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [],
                    ),
                  ],
                ),
                Divider(
                  color: greyText.withOpacity(0.1),
                ),
                const DropDownItem(
                  title: "Температура",
                  functions: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: ButtonWidget(
                    func: () {
                      Navigator.pop(context);
                    },
                    text: "Показать ( 2 товара )",
                    start: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).padding.bottom + 20.h,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
