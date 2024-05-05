import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:souqna_app/routes/app_routes.dart';
import 'package:souqna_app/util/image_constant.dart';
class editItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: ()
          {
            Get.toNamed(AppRoutes.itemDetailsScreen);
          },
          child: Icon(
            Icons.arrow_back_ios_outlined,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: Container(
                  width: 250.0,
                  color:Color(0xff720D83),
                  child: Stack(
                      children: [
                        Image.asset(ImageConstant.imgDirect21),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 35.0,
                            width: 100.0,
                             decoration: BoxDecoration(
                               color: Color(0xff720D83),
                               borderRadius: BorderRadius.circular(15.0),
                             ),
                             child: TextButton(onPressed: (){},
                                 child:
                             Text('Edit Image',
                               style: TextStyle(
                                 color: Colors.white,
                               ),),
                             ),
                           ),
                        ),
                      ]
                  ),
                ),
              ),
              Text(':أسم المنتج',
              style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 60.0,
                width: 320.0,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'تشيرت راوند',
                    border: OutlineInputBorder(),

                  ),
                ),
              ),

              SizedBox(
                height: 15.0,
              ),
              Text(':سعر المنتج',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 60.0,
                width: 320.0,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: '200جينيه',
                    border: OutlineInputBorder(),

                  ),
                ),
              ),

              SizedBox(
                height: 15.0,
              ),

              Text(':المخزون',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 60.0,
                width: 320.0,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: '5 قطع',
                    border: OutlineInputBorder(),

                  ),
                ),
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
                height: 40.0,
              ),
              Container(
                height: 60,
                width: 330,
                color:Color(0xff720D83),
                child: TextButton(onPressed: ()
                {
                  Get.toNamed(AppRoutes.itemDetailsScreen);

                },
                  child:
                  Text(
                    'حفظ التغيرات',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
