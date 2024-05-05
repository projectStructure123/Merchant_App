import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:souqna_app/routes/app_routes.dart';

class runningOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.toNamed(AppRoutes.sellerDashboardScreen);
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
          ),
        ),
      ),
      body:
     Padding(
       padding: const EdgeInsets.all(20.0),
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.end,
           children: [

             Text(' : طلبات منتظرة'),
             SizedBox(
               height: 10.0,
             ),
             ListView.separated(
                 physics: NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                 itemBuilder:(context, index ) => GestureDetector(
                     onTap: ()
                     {
                       Get.toNamed(AppRoutes.specificOrdersScreen);
                       },
                     child: buildwaitpiece()),
                 separatorBuilder:(context, index )=>SizedBox(
                   height: 20.0,
                 ) ,
                 itemCount:5
             ),
           ],

         ),
       ),
     ),
    );
  }
}
Widget buildwaitpiece()=>Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text('تشيرتات#',
          style: TextStyle(
            fontSize: 14.0,
            color: Color(0xffAF36C3),
          ),
        ),
        Text('تشيرت اسود',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text('32053 :رقم الاوردر',
          style: TextStyle(
            fontSize: 14.0,
            color: Color(0xff9C9BA6),
          ),
        ),
        Row(
          children: [
            Container(
              height:35.0 ,
              width: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  color: Color(0xff720D83),
                ),
              ),
              child: TextButton(onPressed: (){}, child:
              Text('إلغاء',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xff720D83),
                ),
              ),
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Container(
              height:35.0 ,
              width: 60.0,
              decoration:
              BoxDecoration(
                color: Color(0xff9B1CB0),
                borderRadius: BorderRadius.circular(15.0),
                ),
              child: TextButton(onPressed: (){}, child:
              Text('موافقة',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xffFFFFFF),
                ),
              ),
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text('260 جينيه',
              style: TextStyle(
                fontSize: 17.0,

              ),
            ),
          ],
        ),
      ],
    ),
    SizedBox(
      width: 10.0,
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(15.0),
        border: Border.all(
          color: Color(0xff720D83),
          width: 2.0,
        ),
      ),
        alignment: AlignmentDirectional.topEnd,
        height: 90.0,
        width: 90.0,
        child: Center(
          child: Text(
            '#1',
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
              color: Color(0xff46224C),
            ),
          ),
        ),
    ),
  ],
);