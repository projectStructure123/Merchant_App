import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:souqna_app/routes/app_routes.dart';

class MenuScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200.0,
              color: Color(0xff720D83),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                            Container(
                              height: 40.0,
                              width: 40.0 ,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(15.0)
                                ),
                                child: GestureDetector(
                                    onTap: ()
                                    {
                                      Get.toNamed(AppRoutes.sellerDashboardScreen);
                                    },
                                    child: Icon(Icons.arrow_back_ios_outlined))),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text('حسابي',
                          style:TextStyle(
                         fontSize: 19.0,
                         fontWeight: FontWeight.bold,
                         color: Colors.white,

                          ) ,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text('رصيدك',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    Text('500.00 جينيه',
                    style: TextStyle(
                    fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  children: [
                    Row(
                     children: [
                       Icon(Icons.arrow_back_ios_outlined,
                       color:Color(0xff747783),),
                       SizedBox(
                         width: 70.0,
                       ),
                       Text('المعلومات الشخصية',
                       style: TextStyle(
                       fontSize: 15.0
                       ),
                       ),
                       SizedBox(
                         width: 70.0,
                       ),
                       Icon(Icons.perm_contact_cal_outlined,
                         color:  Color(0xffFB6F3D),),
                     ],
                    ),
                    SizedBox(
                     height: 20.0,
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_back_ios_outlined,
                          color:Color(0xff747783),),
                        SizedBox(
                          width: 100.0,
                        ),
                        Text('الاعدادات',
                          style: TextStyle(
                              fontSize: 15.0
                          ),
                        ),
                        SizedBox(
                          width: 97.0,
                        ),
                        Icon(Icons.settings,
                          color:  Color(0xff413DFB),),
                      ],
                    ),
                  ],
                ),

            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: ()
                        {
                          Get.toNamed(AppRoutes.addNewItemsScreen);
                        },
                        child: Icon(Icons.arrow_back_ios_outlined,
                          color:Color(0xff747783),),
                      ),
                      SizedBox(
                        width: 70.0,
                      ),
                      Text('اضافه منتج جديد',
                        style: TextStyle(
                            fontSize: 15.0
                        ),
                      ),
                      SizedBox(
                        width: 60.0,
                      ),
                      Icon(Icons.add,
                        color:  Color(0xff000000),),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text('29K',
                      style: TextStyle(
                      fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff9C9BA6),
                      ),
                      ),
                      SizedBox(
                        width: 85.0,
                      ),
                      Text('عدد الأوردات',
                        style: TextStyle(
                            fontSize: 15.0
                        ),
                      ),
                      SizedBox(
                        width: 85.0,
                      ),
                      Icon(Icons.sticky_note_2_outlined,
                        color:  Color(0xff18CFE8),),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: ()
                        {
                          Get.toNamed(AppRoutes.reviewScreen);
                        },
                        child: Icon(Icons.arrow_back_ios_outlined,
                          color:Color(0xff747783),),
                      ),
                      SizedBox(
                        width: 65.0,
                      ),
                      Text('مراجعات المستخدمين',
                        style: TextStyle(
                            fontSize: 15.0
                        ),
                      ),
                      SizedBox(
                        width: 65.0,
                      ),
                      Icon(Icons.add,
                        color:  Color(0xff2AE1E1),),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: ()
                        {
                          Get.toNamed(AppRoutes.welcomeScreen);
                        },
                        child: Icon(Icons.arrow_back_ios_outlined,
                          color:Color(0xff747783),),
                      ),
                      SizedBox(
                        width: 100.0,
                      ),
                      Text('Log Out',
                        style: TextStyle(
                            fontSize: 15.0
                        ),
                      ),
                      SizedBox(
                        width: 100.0,
                      ),
                      Icon(Icons.logout,
                        color:  Color(0xffE11616),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
