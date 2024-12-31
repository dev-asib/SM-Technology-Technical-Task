import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class Assignment3Controller extends GetxController {
  final RxBool _inProgress = false.obs;
  final RxString _errorMessage = ''.obs;
  final RxList<ProductModel2> _productList = <ProductModel2>[].obs;

  RxBool get inProgress => _inProgress;

  RxString get errorMessage => _errorMessage;

  RxList<ProductModel2> get productList => _productList;

  @override
  void onInit() {
    super.onInit();
    fetchProductList();
  }

  Future<void> fetchProductList() async {
    _inProgress.value = true;

    try {
      var box = await Hive.openBox<ProductModel2>('products');
      var cachedProducts = box.values.toList();

      if (cachedProducts.isNotEmpty) {
        _productList.assignAll(cachedProducts);
      } else {
        final NetworkResponse response = await Get.find<NetworkCaller>()
            .getRequest(url: ApiUrls.kProductsUrl2);

        if (response.isSuccess) {
          _errorMessage.value = '';
          final products = (response.responseBody as List)
              .map((item) => ProductModel2.fromJson(item))
              .toList();

          await box.addAll(products);
          _productList.assignAll(products);
        } else {
          _errorMessage.value =
              response.errorMessage ?? 'Something went wrong.';
        }
      }
    } catch (e) {
      _errorMessage.value = 'Failed to fetch product data from API.';
    } finally {
      _inProgress.value = false;
    }
  }
}
