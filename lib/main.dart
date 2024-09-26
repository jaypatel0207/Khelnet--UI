import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:khelnet/Controller/ManageAc_switch_controller.dart';
import 'package:khelnet/Pages/Students/AddStudent.dart';
import 'package:khelnet/Pages/coaches/Head%20Coach/Academy.dart';
import 'package:khelnet/Pages/coaches/Head%20Coach/bottom.dart';
import 'package:khelnet/Pages/coaches/Head%20Coach/homepage.dart';
import 'package:khelnet/Pages/academy.dart';
import 'package:khelnet/Pages/loginpage.dart';
import 'package:khelnet/Pages/otp.dart';
import 'package:khelnet/Pages/signup.dart';
import 'package:khelnet/test.dart';




void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(SwitchController()); // Initialize your controller
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,

      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,

          // You can use the library anywhere in the app even in theme

          home: child,
        );
      },
      child: Bottom()
    );
  }
}
