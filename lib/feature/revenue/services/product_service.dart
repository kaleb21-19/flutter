import 'package:app/cores/services/api_services.dart';
import 'package:app/feature/auth%20copy%202/models/product_model.dart';
import 'package:get/get.dart';

class ProductService extends GetxService {
  ApiServices apiServices = ApiServices.instance;

  Future<List<ProductModel>> getProducts() async {
    final response = await apiServices.get('/products');
    final data = response.data;
    if (data['status'] == 'success') {
      final List<dynamic> products = data['data'];
      return products.map((product) => ProductModel.fromJson(product)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
