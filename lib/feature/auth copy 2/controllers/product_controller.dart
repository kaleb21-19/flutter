import 'package:app/feature/auth%20copy%202/services/product_service.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  ProductService productService = ProductService();

  Future<void> getProduct() async {
    final response = await productService.getProducts();
    print(response);
  }
}
