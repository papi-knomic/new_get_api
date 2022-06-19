import 'package:get/get.dart';
import 'package:new_get_api/repo/currency_repo.dart';

import '../models/currency_model.dart';

class CurrencyController extends GetxController {
  final CurrencyRepo currencyRepo;
  CurrencyController({
    required this.currencyRepo,
  });

  List<Currency> _currencies = [];
  List<Currency> get currencies => _currencies;
  int _count = 0;
  int get count => _count;

  @override
  void onInit() {
    super.onInit();
    getCurrency();
  }

  void getCurrency() async {
    _currencies = await currencyRepo.getCurrency();
    _count = _currencies.length;
    update();
  }
}
