import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_get_api/controllers/currency_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<CurrencyController>(builder: (controller) {
        return ListView.builder(
          itemCount: controller.count,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(controller.currencies[index].name!),
              subtitle: Text(controller.currencies[index].iso2!),
            );
          },
        );
      }),
    );
  }
}
