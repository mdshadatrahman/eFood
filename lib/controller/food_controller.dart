import 'package:get/get.dart';

import '../services/http_services.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = [].obs;
  

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await HttpService.fetchFood();
      productList.value = products as List;
    } finally {
      isLoading(false);
    }
  }
}