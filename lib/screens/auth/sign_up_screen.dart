import 'package:file_picker/file_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../routes/app_routes.dart';
import '../../theme/custom_text_field.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../util/image_constant.dart';
// import 'controller/sign_up_controller.dart'; // Import your controller

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // final SignUpController _controller = Get.put(SignUpController());
  final _emailController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  String? _logoFilePath;
  String? _storeImageFilePath;

  bool _isChecked = false;

  Future<void> _pickImage(ImageSource source) async {
    final pickedImage = await ImagePicker().pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        _logoFilePath = pickedImage.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageConstant.backgroundImg),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            extendBodyBehindAppBar: true,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(
                100.0,
              ),
              child: AppBar(
                automaticallyImplyLeading: false,
                clipBehavior: Clip.none,

                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Padding(
                  padding: const EdgeInsets.only(right: 15.0,top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'الاشتراك',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.displaySmall,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body:  Container(
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 130.0, 16.0, 0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Column(
                            children: [
                              Text('تحميل لوجو المحل',style: TextStyle(fontFamily: 'Sen', fontWeight: FontWeight.normal, fontSize: 15),),
                              Container(
                                height:100.0 ,
                                width: 120.0,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(15.0),
                                  border: Border.all(

                                    color: Color(0xffE8EAED),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        await _pickImage(ImageSource.gallery);
                                      },
                                      icon: Icon(
                                        Icons.cloud_upload_outlined,
                                        color: Color(0xff523BB1),
                                        size: 40,
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
                          Column(
                            children: [
                              Text('تحميل صورة المحل',style: TextStyle(fontFamily: 'Sen', fontWeight: FontWeight.normal, fontSize: 15),),

                              Container(
                                height: 100.0 ,
                                width: 120.0,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(15.0),
                                  border: Border.all(

                                    color: Color(0xffE8EAED),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(onPressed: (){},
                                      icon: Icon(
                                        Icons.cloud_upload_outlined,
                                        color: Color(0xff523BB1),
                                        size: 40,
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
                        ],
                      ),
                      CustomTextField(

                        textAlign: TextAlign.right,
                        hint: "اسم المحل",
                        suffixIcon: Icon(Icons.person_rounded),
                        controller: _firstNameController,
                        textInputType: TextInputType.name,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'FirstName field is required';
                          }
                        },
                      ),
                      Row(

                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              child: IconButton(icon: Image.asset(ImageConstant.LocationIcon), onPressed: () {  },)),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: CustomTextField(
                              textAlign: TextAlign.right,
                              hint: "العنوان",
                              suffixIcon: Icon(Icons.person_rounded),
                              controller: _lastNameController,
                              textInputType: TextInputType.name,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'LastName field is required';
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      CustomTextField(
                        textAlign: TextAlign.right,
                        hint: "البريد الالكتروني",
                        suffixIcon: Icon(Icons.email),
                        controller: _emailController,
                        textInputType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email field is required';
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFBAC2C7),
                            // Same border color as CustomTextField
                            width:
                                0.5, // Same border width as CustomTextField
                          ),
                          borderRadius: BorderRadius.circular(
                              10), // Same border radius as CustomTextField
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: IntlPhoneField(
                              disableLengthCheck: true,
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(
                                hintTextDirection: TextDirection.rtl,
                                hintText: 'رقم الهاتف',
                                hintStyle: CustomTextStyles.bodyLarge18,
                                border: InputBorder
                                    .none, // Remove the default border
                              ),
                              initialCountryCode: 'EG',
                              onChanged: (phone) {
                                print(phone.completeNumber);
                              },

                              dropdownIconPosition: IconPosition.trailing,

                            ),
                          ),
                        ),
                      ),
                      CustomTextField(
                        textAlign: TextAlign.right,
                        obscureText: true,
                        hint: "كلمة المرور",
                        suffixIcon: Icon(Icons.lock),
                        controller: _passwordController,
                        textInputType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password field is required';
                          }
                        },
                      ),
                      CustomTextField(
                        textAlign: TextAlign.right,
                        obscureText: true,
                        hint: "تأكيد كلمة المرور",
                        suffixIcon: Icon(Icons.lock),
                        controller: _confirmPasswordController,
                        textInputType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'ConfirmPassword field is required';
                          }
                        },
                      ),


                      // Add other text fields similarly
                      SizedBox(height: 24),

                      SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 50.0),
                              child: GestureDetector(
                                onTap: () {
                                  try {
                                    Get.toNamed(AppRoutes.welcomeScreen);
                                  } catch (e) {
                                    print('Navigation error: $e');
                                  }
                                },
                                child: ElevatedButton(
                                  onPressed:  ()
                                  {
                                    Get.toNamed(AppRoutes.welcomeScreen);
                                  }
                                  // _controller.signUp
                                  ,
                                  // Use the controller method
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    backgroundColor: Color(0xFF720D83),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 40, vertical: 16),
                                  ),
                                  child: Text(
                                    'الاشتراك',
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.bodyLarge18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 35),
                      // Add some space between the button and the text
                      Container(
                        width: 400,
                        margin: EdgeInsets.only(
                          left: 40,
                          right: 46,
                        ),
                        child: RichText(

                          text: TextSpan(

                            children: [
                              TextSpan(
                                text: "لديك اشتراك بالفعل ؟ ",
                                style: CustomTextStyles
                                    .bodyMediumTajawalff5b5b5e,

                              ),
                                  WidgetSpan(child: SizedBox(width: 10,),),
                              TextSpan(
                                text: "تسجيل الدخول",
                                style: CustomTextStyles
                                    .bodyMediumTajawalff6a1179,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // Navigate to the login screen when the text is clicked
                                    Get.toNamed(AppRoutes.welcomeScreen);
                                  },
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 22.0, // Adjust the position as needed
          left: 1.0, // Adjust the position as needed
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: GestureDetector(
              onTap: () {
                // Navigate back when the arrow icon is tapped
                Get.toNamed(AppRoutes.welcomeScreen);
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15),
                ),
                child:
                    Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
