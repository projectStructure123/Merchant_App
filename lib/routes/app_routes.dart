import 'package:get/get_navigation/src/routes/get_route.dart';

import 'package:souqna_app/screens/auth/sign_up_screen.dart';
import 'package:souqna_app/screens/runningOrders/runningOrders.dart';
import 'package:souqna_app/screens/specificOrders/specificOrders.dart';

import '../screens/add_new_items/addNewItems.dart';
import '../screens/auth/bindings/sign_up_binding.dart';
// import '../screens/cart_screen/binding/cart_binding.dart';
// import '../screens/cart_screen/cart_screen.dart';
// import '../screens/checkout_screen/checkout_screen.dart';
import '../screens/edit_item/EditItem.dart';
// import '../screens/food_details_screen/binding/food_details_binding.dart';
// import '../screens/food_details_screen/food_details_screen.dart';
// import '../screens/home_cat_screen/binding/home_cat_binding.dart';
// import '../screens/home_cat_screen/home_cat_screen.dart';
// import '../screens/home_screen/home.dart';
import '../screens/itemDetails/itemDetails.dart';
import '../screens/menu_screen/menu_screen.dart';

import '../screens/myListScreen/myList.dart';
import '../screens/reviewScreen/reviewScreen.dart';
import '../screens/sellerDashboardHome/sellerDashboardHome.dart';
import '../screens/verification_code_screen/binding/verification_code_binding.dart';
import '../screens/verification_code_screen/verification_code_screen.dart';
import '../screens/welcome__and_sign_in_screen/binding/welcome_screen_and_sign_in_binding.dart';
import '../screens/welcome__and_sign_in_screen/welcome_and_sign_in_screen.dart';


class AppRoutes {

  static const String initialRoute = '/initialRoute';

  static const String welcomeScreen = '/welcome_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String sellerDashboardScreen = '/sellerDashboardHome';

  static const String myListScreen = '/myList';

  static const String reviewScreen = '/ReviewScreen';

  static const String menuScreen = '/MenuScreen';

  static const String addNewItemsScreen = '/addNewItems';

  static const String itemDetailsScreen = '/ItemDetails';

  static const String editItemScreen = '/editItem';

  static const String runningOrdersScreen = '/runningOrders';

  static const String specificOrdersScreen = '/specificOrders';

  static const String checkout = '/checkout_screen';

  // static const String homeCatScreen = '/home_cat_screen';

  static const String homeScreen = '/home_screen';

  // static const String cartScreen = '/cart_screen';

  static const String verificationScreen = '/verification_screen';

  // static const String foodDetailsScreen = '/food_details_screen';

  static final List<GetPage> pages = [
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
    ),
    // GetPage(
    //   name: checkout,
    //   page: () => CheckoutScreen(),
    // ),
    // GetPage(
    //   name: homeCatScreen,
    //   page: () => HomeCatScreen(),
    //   binding: HomeCatBinding(),
    // ),
    // GetPage(
    //   name: homeScreen,
    //   page: () => home(), // Specify the widget for the home screen
    //   // Add bindings if necessary
    // ),
    // GetPage(
    //   name: cartScreen,
    //   page: () => Cart(), // Specify the widget for the Cart screen
    //   binding: CartBinding(), // Bind the Cart controller
    // ),
    GetPage(
      name: verificationScreen,
      page: () => VerificationScreen(), // Specify the widget for the Verification screen
      binding: VerificationBinding(), // Bind the Verification controller
    ),
    // GetPage(
    //   name: foodDetailsScreen,
    //   page: () => foodDetails(), // Specify the widget for the FoodDetails screen
    //   binding: FoodDetailsBinding(), // Bind the FoodDetails controller
    // ),
    GetPage(
      name: welcomeScreen, // Add route name
      page: () => WelcomeScreen(),
    ), GetPage(
      name: sellerDashboardScreen, // Add route name
      page: () => sellerDashboardHome(),
       // Add binding
    ), GetPage(
      name: myListScreen, // Add route name
      page: () => myList(),
       // Add binding
    ),GetPage(
      name: reviewScreen, // Add route name
      page: () => ReviewScreen(),
       // Add binding
    ),GetPage(
      name: menuScreen, // Add route name
      page: () => MenuScreen(),
       // Add binding
    ),GetPage(
      name: addNewItemsScreen, // Add route name
      page: () => addNewItems(),
       // Add binding
    ),GetPage(
      name: runningOrdersScreen, // Add route name
      page: () => runningOrders(),
       // Add binding
    ),GetPage(
      name: specificOrdersScreen, // Add route name
      page: () => specificOrders(),
       // Add binding
    ),GetPage(
      name: itemDetailsScreen, // Add route name
      page: () => itemDetails(),
       // Add binding
    ),GetPage(
      name: editItemScreen, // Add route name
      page: () => editItem(),
       // Add binding
    ),
    GetPage(
      name: initialRoute, // Add route name
      page: () => WelcomeScreen(),
     // Add binding
    ),

    // Add more routes if needed
  ];
}

