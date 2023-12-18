import 'package:stacked/stacked.dart';

class DashboardViewModel extends BaseViewModel {
  int index = 0;

  DashboardViewModel() {
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    //Write your models loading codes here

    //Let other views to render again
    setBusy(false);
    notifyListeners();
  }

  void navigationOnTap(int value) {
    index = value;
    notifyListeners();
  }
}
