
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sign_in_button/sign_in_button.dart';

import '../../routes/app_routes.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../util/image_constant.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  static const color = const Color(0x350DB027);
  bool rememberMe = false;
  bool agreeTerms = false;

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        // Background Image
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageConstant.welcomeBackgroundImg),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        // Main Scaffold
        Positioned.fill(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 97.62,
                      height: 66,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageConstant.imgDirect21),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),

                    /// i want to add a button in here in which it is positioned on the left
                  ],
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 236,
                          margin: EdgeInsets.only(right: 24),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "اهلا بك في\n",
                                  style: CustomTextStyles
                                      .displayLargeNotoSansArabicffffffff,
                                ),
                                TextSpan(
                                  text: "ســوقـنــا",
                                  style: CustomTextStyles
                                      .displayLargeNotoSansArabicff560d63,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                      Container(
                        width: 380,
                        margin: EdgeInsets.only(
                          left: 64,
                          right: 26,
                        ),
                        child: Text(
                          "البرنامج الاول في مصر لتوصيل جميع طلباتك",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                          style: CustomTextStyles
                              .bodyLargeNotoSansArabicOnErrorContainer
                              .copyWith(
                            height: 1.50,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 32,
                          right: 26,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 9,
                                bottom: 7,
                              ),
                              child: SizedBox(
                                width: 84,
                                child: Divider(
                                  color: theme.colorScheme.onErrorContainer
                                      .withOpacity(0.5),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 13,
                              ),
                              child: Text(
                                "تسجيل الدخول",
                                style: CustomTextStyles
                                    .titleSmallTajawalOnErrorContainer,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 9,
                                bottom: 7,
                              ),
                              child: SizedBox(
                                width: 102,
                                child: Divider(
                                  color: theme.colorScheme.onErrorContainer
                                      .withOpacity(0.5),
                                  indent: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      // Other UI components
                      Container(
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFC043D5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3FD3D1D8),
                              blurRadius: 30,
                              offset: Offset(15, 15),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: IntlPhoneField(
                            disableLengthCheck: true,
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              hintTextDirection: TextDirection.rtl,
                              hintText: 'رقم الهاتف',
                              hintStyle: CustomTextStyles.bodyLarge18,
                            ),
                            initialCountryCode: 'EG',
                            onChanged: (phone) {
                              print(phone.completeNumber);
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFC043D5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3FD3D1D8),
                              blurRadius: 30,
                              offset: Offset(15, 15),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: TextFormField(
                          obscureText: true,
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.lock),
                            hintText: 'تأكيد كلمة المرور',
                            hintTextDirection: TextDirection.rtl,
                            hintStyle: CustomTextStyles.bodyLarge18,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(left: 11),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 1),
                                    child: GestureDetector(
                                      onTap: (){Get.toNamed(AppRoutes.verificationScreen);},
                                      child: Text(
                                        "نسيت كلمة المرور؟",
                                        style: CustomTextStyles
                                            .titleSmallTajawalOnErrorContainer,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            rememberMe = !rememberMe;
                                          });
                                        },
                                        child: Text(
                                          "تذكرني",
                                          style: CustomTextStyles
                                              .bodyMediumTajawalOnErrorContainer,
                                        ),
                                      ),
                                      SizedBox(width: 10),

                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            rememberMe = !rememberMe;
                                          });
                                        },
                                        child: Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(

                                            borderRadius:
                                                BorderRadius.circular(15),
                                            // Make it half of the height to make it round
                                            border: Border.all(
                                              color: rememberMe
                                                  ? Colors.white
                                                  : Colors.white,
                                              width: 2,
                                            ),
                                          ),
                                          child: rememberMe
                                              ? Icon(
                                                  Icons.circle,
                                                  size: 10.0,
                                                  color: Colors.white,
                                                )
                                              : null,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 21),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              agreeTerms = !agreeTerms;
                                            });
                                          },
                                          child: Text(
                                            'اتفق مع الشروط والاحكام ',
                                            style: CustomTextStyles
                                                .bodyMediumTajawalOnErrorContainer,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        agreeTerms = !agreeTerms;
                                      });
                                    },
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(15),
                                        // Make it half of the height to make it round
                                        border: Border.all(
                                          color: agreeTerms
                                              ? Colors.white
                                              : Colors.white,
                                          width: 2,
                                        ),
                                      ),
                                      child: agreeTerms
                                          ? Icon(
                                              Icons.circle,
                                              size: 10.0,
                                              color: Colors.white,
                                            )
                                          : null,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        width: 159.26,
                        height: 54,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed(AppRoutes.sellerDashboardScreen);                            // Handle sign-up button press
                          },
                          child: Text(
                            'تسجيل الدخول',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: color,
                          ),
                        ),
                      ),



                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              Get.toNamed(AppRoutes.signUpScreen);
                            },
                            child: Text("الاشتراك الان",
                            style: CustomTextStyles
                                .titleMediumTajawalOnErrorContainer
                                .copyWith(
                              decoration: TextDecoration.underline,),),


                          ),
                          SizedBox(width: 8,),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              "ليس لديك اشتراك؟",
                              style: CustomTextStyles.bodyLargeOnErrorContainer,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),


      ],
    );
  }
}
