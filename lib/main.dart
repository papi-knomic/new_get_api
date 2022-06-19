import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_get_api/controllers/currency_controller.dart';
import 'package:new_get_api/screens/home.dart';
import 'package:new_get_api/helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get.find<CurrencyController>().getCurrency();
    return GetBuilder<CurrencyController>(
      builder: (_) {
        return const GetMaterialApp(
          title: 'Flutter Demo',
          home: HomePage(),
        );
      },
    );
  }
}
