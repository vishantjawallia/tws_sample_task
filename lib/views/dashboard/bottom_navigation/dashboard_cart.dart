import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardCart extends StatelessWidget {
  const DashboardCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Cart Page',
          style: Get.textTheme.titleLarge,
        ),
      ),
    );
  }
}
