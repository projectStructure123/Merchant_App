import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:souqna_app/routes/app_routes.dart';

import '../../util/image_constant.dart';

class sellerDashboardHome extends StatefulWidget {
  @override
  State<sellerDashboardHome> createState() => _sellerDashboardHomeState();
}

class _sellerDashboardHomeState extends State<sellerDashboardHome> {
  int _selectedIndex = 2; // Set the default selected index to the home icon button
  final GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      // Execute after the frame has been rendered
      _navigateToIndex(_selectedIndex); // Navigate to the default selected index
    });
  }

  // Function to programmatically navigate to a specific index in the BottomNavigationBar
  void _navigateToIndex(int index) {
    final BottomNavigationBar? navigationBar =
    _bottomNavigationKey.currentWidget as BottomNavigationBar?;
    navigationBar!.onTap!(index);
  }

  @override
  Widget build(BuildContext context) {
    List<double> data = [10, 20, 30];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        clipBehavior: Clip.none,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    // Adjust the color and opacity of the shadow as needed
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3), // Adjust the offset of the shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: IconButton(
                  icon: Image.asset(
                    ImageConstant.Menu1,
                  ),
                  onPressed: () {
                    // Handle button press
                  },
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: TextStyle(
                          fontFamily: 'Sen',
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.purple),
                    ),
                    Row(
                      children: [
                        Text(
                          'Men’s Club - Cairo - Nasr City ',
                          style: TextStyle(
                              fontFamily: 'Sen',
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                        Icon(Icons.arrow_drop_down_outlined),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: 12),
            IconButton(
              icon: Image.asset(ImageConstant.PersonIcon),
              onPressed: () {
                Get.toNamed(AppRoutes.menuScreen);
              },
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        key: _bottomNavigationKey,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        onTap: (index) {

          setState(() {
            _selectedIndex = index; // Update the selected index
          });
          Future.delayed(Duration(milliseconds: 200), () {
            switch (index) {
              case 0:
                Get.toNamed(AppRoutes
                    .sellerDashboardScreen); // Navigate to settings screen
                break;
              case 1:
                Get.toNamed(
                    AppRoutes.runningOrdersScreen); // Navigate to shop screen
                break;
              case 2:
                Get.toNamed(
                    AppRoutes.sellerDashboardScreen); // Navigate to home screen
                break;
            }
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: Center(
              child: ImageIcon(
                AssetImage(ImageConstant.settingsiconbar),
                size: 35,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(ImageConstant.shopiconbar),
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(ImageConstant.homeiconbar),
              size: 40,
            ),
            label: '',
          ),
        ],
      ),
      body: ListView(
        children: [Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 170,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 7,
                                color: Colors.transparent,
                                style: BorderStyle.solid,
                                strokeAlign: BorderSide.strokeAlignCenter,
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  // Adjust the color and opacity of the shadow as needed
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // Adjust the offset of the shadow
                                ),
                              ],
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(20.0),
                                  right: Radius.circular(20.0))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  child: Text(
                                    '20',
                                    style: TextStyle(
                                        fontFamily: 'Sen',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 45),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  'جميع الطلبات',
                                  style: TextStyle(
                                      fontFamily: 'Sen',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.runningOrdersScreen);
                          },
                          child: Container(
                            width: 170,
                            height: 150,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 7,
                                  color: Colors.transparent,
                                  style: BorderStyle.solid,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                ),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    // Adjust the color and opacity of the shadow as needed
                                    spreadRadius: 2,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // Adjust the offset of the shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(20.0),
                                    right: Radius.circular(20.0))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Container(
                                    child: Text(
                                      '05',
                                      style: TextStyle(
                                          fontFamily: 'Sen',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 45),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    'الطلبات المنتظرة',
                                    style: TextStyle(
                                        fontFamily: 'Sen',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 200,
                        height: 180,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 7,
                              color: Colors.transparent,
                              style: BorderStyle.solid,
                              strokeAlign: BorderSide.strokeAlignCenter,
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                // Adjust the color and opacity of the shadow as needed
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(
                                    0, 3), // Adjust the offset of the shadow
                              ),
                            ],
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(20.0),
                                right: Radius.circular(20.0))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // Changed to start
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // Changed to start
                                children: [
                                  Text(
                                    '<< التفاصيل ',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.purple,
                                      color: Colors.purple,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 154),
                                  Text(
                                    'إجمالى الإيرادات',
                                    style: TextStyle(
                                      fontFamily: 'Sen',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'جنيه',
                                  style: TextStyle(
                                      fontFamily: 'Sen',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '4,241',
                                  style: TextStyle(
                                      fontFamily: 'Sen',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                            Expanded(
                              child: AspectRatio(
                                aspectRatio: 1.5,
                                child: LineChart(
                                  LineChartData(
                                    gridData: FlGridData(show: false),
                                    titlesData: FlTitlesData(show: false),
                                    borderData: FlBorderData(show: false),
                                    minX: 0,
                                    maxX: 6,
                                    minY: 0,
                                    maxY: 100,
                                    lineBarsData: [
                                      LineChartBarData(
                                        spots: [
                                          FlSpot(0, data[0]),
                                          FlSpot(5, data[1]),
                                          FlSpot(7, data[2]),
                                        ],
                                        isCurved: true,
                                        color: Colors.purple,
                                        dotData: FlDotData(show: false),
                                        belowBarData: BarAreaData(show: false),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 200,
                        height: 160,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 7,
                              color: Colors.transparent,
                              style: BorderStyle.solid,
                              strokeAlign: BorderSide.strokeAlignCenter,
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                // Adjust the color and opacity of the shadow as needed
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(
                                    0, 3), // Adjust the offset of the shadow
                              ),
                            ],
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(20.0),
                                right: Radius.circular(20.0))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // Changed to start
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed(AppRoutes.myListScreen);
                                    },
                                    child: Text(
                                      '<< جميع المنتجات',
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.purple,
                                        color: Colors.purple,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 170),
                                  Text(
                                    'منتجاتى',
                                    style: TextStyle(
                                      fontFamily: 'Sen',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: 102,
                                    height: 105,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC4C4C4),
                                      borderRadius: BorderRadius.circular(18.21),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          ImageConstant.imgDirect21,
                                        ),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: 102,
                                    height: 105,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC4C4C4),
                                      borderRadius: BorderRadius.circular(18.21),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          ImageConstant.imgDirect21,
                                        ),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: 102,
                                    height: 105,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC4C4C4),
                                      borderRadius: BorderRadius.circular(18.21),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          ImageConstant.imgDirect21,
                                        ),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 200,
                        height: 125,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 7,
                              color: Colors.transparent,
                              style: BorderStyle.solid,
                              strokeAlign: BorderSide.strokeAlignCenter,
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                // Adjust the color and opacity of the shadow as needed
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(
                                    0, 3), // Adjust the offset of the shadow
                              ),
                            ],
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(20.0),
                                right: Radius.circular(20.0))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // Changed to start
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed(AppRoutes.reviewScreen);
                                    },
                                    child: Text(
                                      '<< جميع المراجعات',
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.purple,
                                        color: Colors.purple,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 150),
                                  Text(
                                    'المراجعات',
                                    style: TextStyle(
                                      fontFamily: 'Sen',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text(
                                          'المجموع 20 مراجعة',
                                          style: TextStyle(
                                              fontSize: 16, fontFamily: 'Sen'),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        '4.9',
                                        style: TextStyle(
                                            fontSize: 24, fontFamily: 'Sen'),
                                      ),
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.star,
                                        color: Colors.purple,
                                        size: 40,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    ],  ),

    );
  }
}
