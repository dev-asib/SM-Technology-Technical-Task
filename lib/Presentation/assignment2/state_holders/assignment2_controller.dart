import 'package:get/get.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class Assignment2Controller extends GetxController {
  final RxBool _inProgress = false.obs;
  final RxString _errorMessage = ''.obs;
  final RxList<ProductModel1> _productList = <ProductModel1>[].obs;

  RxBool get inProgress => _inProgress;

  RxString get errorMessage => _errorMessage;

  RxList<ProductModel1> get productList => _productList;

  @override
  void onInit() {
    super.onInit();
    fetchProductList();
  }

  Future<void> fetchProductList() async {
    _inProgress.value = true;

    try {
      final NetworkResponse response = await Get.find<NetworkCaller>()
          .getRequest(url: ApiUrls.kProductsUrl1);

      if (response.isSuccess) {
        _errorMessage.value = '';
        final products = (response.responseBody as List)
            .map((item) => ProductModel1.fromJson(item))
            .toList();

        _productList.assignAll(products);
      } else {
        _errorMessage.value = response.errorMessage ?? 'Something went wrong.';
      }
    } catch (e) {
      _errorMessage.value = 'Failed to fetch product data from API.';
    } finally {
      _inProgress.value = false;
    }
  }
}
