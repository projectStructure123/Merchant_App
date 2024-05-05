import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:souqna_app/routes/app_routes.dart';
import 'package:souqna_app/util/image_constant.dart';

class specificOrders extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       automaticallyImplyLeading: false,
       leading: IconButton(
         onPressed: (){
           Get.toNamed(AppRoutes.sellerDashboardScreen);
         },
         icon: Icon(
           Icons.arrow_back_ios_outlined,
         ),
       ),
     ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text('ID : 91542',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff979797),
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                  ),
                  Text('4 قطع',
                  style: TextStyle(
                   fontSize: 30.0,
                   fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                        itemBuilder:(context, index )=>buildpiece(),
                        separatorBuilder:(context, index )=>SizedBox(
                          height: 10.0,
                        ) ,
                        itemCount:4
                   ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40.0,
                    width: 40.0,
                    color: Color(0xffFFFFFF),
                    child: Icon(Icons.remove,
                      color: Color(0xff720D83),
                    ),
                  ),
                 SizedBox(
                   width: 15.0,
                 ),
                 Text('1200.00 جينيه',
                 style: TextStyle(
                 fontSize: 27.0,
                 ),
                 ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    color: Color(0xff720D83),
                    child: Icon(Icons.add,
                    color: Color(0xffFFFFFF),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
Widget buildpiece()=>Column(
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('تشيرت راوند اسود',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Row(
              children: [
                Text('M :المقاس',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),),
                SizedBox(
                  width: 15.0,
                ),
                Icon(Icons.circle,
                  color: Color(0xff000000),),
                Text(' :اللون',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),)
              ],
            ),
            Text('200.00 جينيه',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10.0,
        ),
        Container(
            width: 130.0,
            height: 120.0,
            child: Image.asset(ImageConstant.welcomeBackgroundImg),
        ),
      ],
    ),
    SizedBox(height: 5,),
    Divider(thickness: 1,color: Colors.black,),
  ],
);
