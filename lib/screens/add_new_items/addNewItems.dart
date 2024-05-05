import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:souqna_app/routes/app_routes.dart';




class addNewItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.toNamed(AppRoutes.menuScreen);
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
          ),
        ),

        title: Text('إضافة منتج جديد',
          style: TextStyle(
            fontSize: 17.0,
          ),
        ),
        actions: [
         TextButton(onPressed: (){},
             child: Text(
               'Reset',
               style: TextStyle(
                 fontSize: 14.0,
                 color: Color(0xff720D83),
               ),
             ),
         )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('اسم المنتج',
              style: TextStyle(
              fontSize: 15.0,
              ),
              ),
               Container(
                 height: 50.0,
                 width: 330.0,
                 child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'أحذيه',
                      border: OutlineInputBorder(),
                    ),
                  ),
               ),
              SizedBox(
                height: 10.0,
              ),
              Text('تحميل صورة/ فيديو '),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Container(
                height:80.0 ,
                width: 80.0,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(15.0),
                  border: Border.all(
                    color: Color(0xffE8EAED),
                  ),
                ),
                child: Column(
                  children: [
                    IconButton(onPressed: (){


                    },
                        icon: Icon(
                    Icons.cloud_upload_outlined,
                          color: Color(0xff523BB1),
                        ),
                    ),
                    Text('Add',
                    style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xff9C9BA6),
                    ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                height:80.0 ,
                width: 80.0,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(15.0),
                  border: Border.all(
                    color: Color(0xffE8EAED),
                  ),
                ),
                child: Column(
                  children: [
                    IconButton(onPressed: (){},
                      icon: Icon(
                        Icons.cloud_upload_outlined,
                        color: Color(0xff523BB1),
                      ),
                    ),
                    Text('Add',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color(0xff9C9BA6),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                height:80.0 ,
                width: 80.0,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(15.0),
                  border: Border.all(
                    color: Color(0xffE8EAED),
                  ),
                ),
                child: Column(
                  children: [
                    IconButton(onPressed: (){},
                      icon: Icon(
                        Icons.cloud_upload_outlined,
                        color: Color(0xff523BB1),
                      ),
                    ),
                    Text('Add',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color(0xff9C9BA6),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
              Text('السعر',
                style:TextStyle(
                 fontSize: 16.0,
                ),
              ),
              Row(
                children: [
                  Radio(value: 1, groupValue: 1, onChanged: (value){}),
                  Text('Delivery'),
                  Radio(value: 2, groupValue: 2, onChanged: (value){}),
                  Text('pick up'),
                  SizedBox(
                    width: 20.0,
                  ),
                    Container(
                      height: 45.0,
                      width: 115.0,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: '200جينيه',
                          border: OutlineInputBorder(),

                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(
                height: 15.0,
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
                ),
              ),
]
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 45.0,
                    width: 115.0,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: '5 قطع',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(':المخزون',
                    style:TextStyle(
                   fontSize: 17.0,
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Text('التفاصيل',
                style:TextStyle(
                fontSize: 17.0,
              ),
              ),
              Container(
                height: 140,
                width: 330.0,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'abcdefghigklmnopqrstuvwxyz',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                height: 60,
                width: 330,
                color:Color(0xff720D83),
                child: TextButton(onPressed: (){},
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

