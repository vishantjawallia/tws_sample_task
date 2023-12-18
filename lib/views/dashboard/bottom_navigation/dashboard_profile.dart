import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardProfile extends StatelessWidget {
  const DashboardProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Page',
        style: Get.textTheme.titleLarge,
      ),
    );
  }
}
