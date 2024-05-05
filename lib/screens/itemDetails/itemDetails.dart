import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:souqna_app/util/image_constant.dart';

import '../../routes/app_routes.dart';

class itemDetails extends StatefulWidget {
  @override
  State<itemDetails> createState() => _itemDetailsState();
}

class _itemDetailsState extends State<itemDetails> {
  int _selectedIndex = 0;

  final GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
     leading: GestureDetector(
       onTap: ()
       {
         Get.toNamed(AppRoutes.myListScreen);
       },
       child: Icon(
         Icons.arrow_back_ios_outlined,
       ),
     ),

     title: Text('تفاصيل المنتج',
     style: TextStyle(
     fontSize: 17.0,
     ),
     ),
      actions: [
        TextButton(onPressed: ()
        {
          Get.toNamed(AppRoutes.editItemScreen);
        },
            child: Text('Edit'),
        ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(Icons.delete,
        color: Color(0xffE10909),),
      ),
      ],
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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 250.0,
                color:Color(0xff720D83),
                child: Stack(
                    children: [
                      Image.asset(ImageConstant.imgDirect21),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 35.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            color: Color(0xff720D83),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: TextButton(onPressed: (){},
                            child:
                            Text('تشيرتات',
                              style: TextStyle(
                                color: Colors.white,
                              ),),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                          height: 35.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            color: Color(0xff720D83),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: TextButton(onPressed: (){},
                            child:
                            Text('Delivery',
                            style: TextStyle(
                            color: Colors.white,
                            ),
                            ),
                          ),
                        ),
                      ),
                    ]
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('200جينيه',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(
            width: 140.0,
          ),
          Text('تشيرت راوند',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
            ),
           SizedBox(
             height: 10.0,
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('(10 مراجعات)',
                style: TextStyle(
                fontSize: 14.0,
                color: Color(0xffAFAFAF),
                ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text('4.9',
                style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff46224C),
                ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Icon(Icons.star,
                color: Color(0xff46224C),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.circle,
                    color: Color(0xffBD3838),),
                  Icon(Icons.circle,
                    color: Color(0xff3845BD),),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(Icons.circle,
                    color: Color(0xff38BD55),),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(Icons.circle,
                    color: Color(0xffFFFFFF),),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(Icons.circle,
                    color: Color(0xff000000),),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(':الألوان',
                    style:TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              alignment: AlignmentDirectional.topEnd,
                child: Text('المخزون : 5 قطع',
                  style:TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                alignment: AlignmentDirectional.topEnd,
                child: Text('التفاصيل',
                style: TextStyle(
                 fontSize: 13.0,
                  color: Color(0xff32343E),
                ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: 80.0,
              width: 330,
                child: Text('abcdefghigklmnopqrstuvwxyz')
            ),
          ],
            ),
      ),
    );
  }
}
