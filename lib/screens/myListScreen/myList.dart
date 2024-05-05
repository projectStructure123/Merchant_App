import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:souqna_app/routes/app_routes.dart';
import 'package:souqna_app/util/image_constant.dart';

import '../../theme/custom_text_style.dart';

class myList extends StatefulWidget {
  @override
  _myListState createState() => _myListState();
}

class _myListState extends State<myList> {
  int _selectedIndex = 0;
  late List<bool> isSelectedList;

  final GlobalKey _bottomNavigationKey = GlobalKey();

  final List<String> customCategories = [
    'الكل',
    'تيشيرتات',
    'بناطيل',
    'جواكيت',
    'شنط',
  ];

  @override
  void initState() {
    super.initState();
    isSelectedList = List.generate(
        customCategories.length,
            (index) => index == 0); // The first item is selected
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
automaticallyImplyLeading:  false,
        backgroundColor: Colors.transparent, // Set the background color to transparent
        elevation: 0,
        title: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 20.0),
              // Adjust the right margin as needed
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4), // Shadow color
                  ),
                ],
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios_new_rounded),
                  onPressed: () {
                      Get.toNamed(AppRoutes.sellerDashboardScreen); // Handle back button press
                  },
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              'منـتـجـاتــى',
              style: CustomTextStyles.displayLargeNotoSansArabicffffffff1,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        key: _bottomNavigationKey,
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Update the selected index
          });
          Future.delayed(Duration(milliseconds: 200), ()
          {
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(ImageConstant.settingsiconbar),
              size: 35,
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

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 100,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: List.generate(customCategories.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isSelectedList[index]) {
                            // If the same item is tapped again, deselect it
                            isSelectedList[index] = true;
                          } else {
                            // Deselect all other items and select the current one
                            isSelectedList = List.generate(customCategories.length, (i) => i == index);
                          }
                        });

                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8), // Adjust spacing between containers
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: isSelectedList[index] ? Colors.purple : Colors.transparent,
                              width: isSelectedList[index] ? 2.0 : 0.0,

                            ),
                          ),
                        ),
                        child: Text(
                          customCategories[index],
                          style: TextStyle(
                            color: isSelectedList[index] ? Colors.purple : Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'المجموع 4 منتجات',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF9B9BA5),
                              fontSize: 14,
                              fontFamily: 'Sen',
                              fontWeight: FontWeight.bold,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 14,
                itemBuilder: (context, index) {
                  return ProductCard(/* Product details */);
                },
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to programmatically navigate to a specific index in the BottomNavigationBar
  void _navigateToIndex(int index) {
    final BottomNavigationBar? navigationBar =
    _bottomNavigationKey.currentWidget as BottomNavigationBar?;
    navigationBar!.onTap!(index);
  }
}

class ProductCard extends StatelessWidget {
  // Implement your product card widget here
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ()
      {
        Get.toNamed(AppRoutes.itemDetailsScreen);

      },
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [

                    Row(
                      children: [

                        SizedBox(width: 10),
                        Text(
                          'المخزون (5)',
                          style: TextStyle(
                            color: Color(0xFFAFAFAF),
                            fontSize: 13.67,
                            fontFamily: 'Sen',
                          ),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(width: 50,),
                        Text(
                        'تشيرت راوند اسود',
                        style: TextStyle(
                          color: Color(0xFF32343E),
                          fontSize: 14,
                          fontFamily: 'Sen',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.right,
                                        ),
                      ],

                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        SizedBox(width: 150,),
                        Container(
                          child: Container(
                            width: 88.83,
                            height: 24.40,
                            decoration: ShapeDecoration(
                              color: Color(0x5EE161F6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(29.28),
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'تشيرتات',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF720D83),
                                  fontSize: 13.67,
                                  fontFamily: 'Sen',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        SizedBox(width: 10),
                        Text(
                          '200 جنيه',
                          style: TextStyle(
                            color: Color(0xFF32343E),
                            fontSize: 17.49,
                            fontFamily: 'Sen',
                            fontWeight: FontWeight.w700,
                            height: 1,
                          ),
                          textAlign: TextAlign.right,
                        ),


                        SizedBox(width: 15),
                        Text(
                          '(10 مراجعات)',
                          style: TextStyle(
                            color: Color(0xFFAFAFAF),
                            fontSize: 13.67,
                            fontFamily: 'Sen',
                            fontWeight: FontWeight.bold,
                            height: 1,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(width: 15),
                        SizedBox(
                          width: 22.52,
                          height: 16.59,
                          child: Text(
                            '4.9',
                            style: TextStyle(
                              color: Color(0xFF720D83),
                              fontSize: 13.67,
                              fontFamily: 'Sen',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.star,
                          color: Colors.purple,
                          size: 18.0,
                        ),
                      ],
                    ),



                  ],
                ),
              ),
              SizedBox(width: 10), // Add spacing between text and image
              Container(
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
            ],
          ),
        ),
      ),
    );
  }
}
