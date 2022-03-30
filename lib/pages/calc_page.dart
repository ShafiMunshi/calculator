import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/button.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({Key? key}) : super(key: key);

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  String input = '', value = '', resultFinal = '';
  int? value1, value2, result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      input,
                      style: TextStyle(fontSize: 30.sp),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(9),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      resultFinal,
                      style: TextStyle(fontSize: 30.sp),
                    ),
                  ),
                ],
              ),
              height: 150.h,
              width: double.infinity,
              color: Colors.purple),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              onPressed: () {
                Get.updateLocale(
                  Locale('en', 'US'),
                );
              },
              child: Text(
                'English',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              onPressed: () {
                Get.updateLocale(
                  Locale('bn', 'BD'),
                );
              },
              child: Text(
                'Bangla',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button(
                txt: 'num7'.tr,
                tap: () {
                  print(MediaQuery.of(context).size.width);
                  setState(() {
                    input = input + '7';
                    value = value + "7";
                  });
                },
              ),
              button(
                txt: 'num8'.tr,
                tap: () {
                  setState(() {
                    input = input + '8';
                    value = value + "8";
                  });
                },
              ),
              button(
                txt: 'num9'.tr,
                tap: () {
                  setState(() {
                    input = input + '9';
                    value = value + "9";
                  });
                },
              ),
              button(
                clr: Colors.blueAccent,
                txt: 'X',
                tap: () {
                  setState(() {
                    input = input + '*';
                    value1 = int.parse(value);
                    value = '';
                  });
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button(
                txt: 'num4'.tr,
                tap: () {
                  setState(() {
                    input = input + '4';
                    value = value + "4";
                  });
                },
              ),
              button(
                txt: 'num5'.tr,
                tap: () {
                  setState(() {
                    input = input + '5';
                    value = value + "5";
                  });
                },
              ),
              button(
                txt: 'num6'.tr,
                tap: () {
                  setState(() {
                    input = input + '6';
                    value = value + "6";
                  });
                },
              ),
              button(
                clr: Colors.blueAccent,
                txt: '-',
                tap: () {
                  setState(() {
                    input = input + '-';
                    value1 = int.parse(value);
                    value = '';
                  });
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button(
                txt: 'num1'.tr,
                tap: () {
                  setState(() {
                    input = input + '1';
                    value = value + "1";
                    print('input is $input');
                  });
                },
              ),
              button(
                txt: 'num2'.tr,
                tap: () {
                  setState(() {
                    input = input + '2';
                    value = value + "2";
                  });
                },
              ),
              button(
                txt: 'num3'.tr,
                tap: () {
                  setState(() {
                    input = input + '3';
                    value = value + "3";
                  });
                },
              ),
              button(
                clr: Colors.blueAccent,
                txt: '+',
                tap: () {
                  setState(() {
                    input = input + '+';
                    value1 = int.parse(value);
                    value = '';
                  });
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button(
                txt: 'num0'.tr,
                tap: () {
                  setState(() {
                    input = input + '0';
                    value = value + "0";
                  });
                },
              ),
              button(
                txt: 'num00'.tr,
                tap: () {
                  setState(() {
                    input = input + '00';
                    value = value + "00";
                  });
                },
              ),
              button(
                clr: Colors.blueAccent,
                txt: '/',
                tap: () {
                  setState(() {
                    input = input + '/';
                    value1 = int.parse(value);
                    value = '';
                  });
                },
              ),
              button(
                clr: Colors.green,
                txt: '=',
                tap: () {
                  setState(() {
                    value2 = int.parse(value);
                    result = value1! + value2!;
                    resultFinal = "=" + result.toString();
                  });
                },
              ),
            ],
          ),
        ),
        Spacer(),
      ]),
    );
  }
}
