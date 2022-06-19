import 'package:get/get.dart';
import 'package:new_get_api/controllers/currency_controller.dart';
import 'package:new_get_api/repo/currency_repo.dart';

Future<void> init() async {
  Get.lazyPut(() => CurrencyRepo());
  //
  Get.lazyPut(() => CurrencyController(currencyRepo: Get.find()));

}