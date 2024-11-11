import 'package:get/state_manager.dart';

class ApiService extends GetxService {
  Future<String> fetchData() async {
    await Future.delayed(const Duration(seconds: 2));
    return 'Data from API 322';
  }
}
