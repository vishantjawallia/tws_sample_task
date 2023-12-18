import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardHome extends StatelessWidget {
  const DashboardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home Page',
        style: Get.textTheme.titleLarge,
      ),
    );
  }
}
