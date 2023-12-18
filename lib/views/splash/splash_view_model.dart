// ignore_for_file: unused_field


import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
import 'package:tws_sample_task/views/dashboard/dashboard_view.dart';

class SplashViewModel extends BaseViewModel {
  
  SplashViewModel() {
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    //Write your models loading codes here

    //Let other views to render again
    setBusy(false);
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 3800));
    Get.off(() => DashboardView ());
  }
}
