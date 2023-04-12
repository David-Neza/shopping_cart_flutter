import 'package:get/state_manager.dart';
import 'package:shopping_app/models/product.dart';

class ShoppingContoller extends GetxController {
  // RxList<Product> products = <Product>[].obs;
  RxList<Product> products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Product(
          id: 1,
          price: 30,
          productDescription: 'Some description about product',
          productImage: 'abd',
          productName: 'First'),
      Product(
          id: 2,
          price: 40,
          productDescription: 'Some description about product',
          productImage: 'abd',
          productName: 'Sec'),
      Product(
          id: 3,
          price: 50,
          productDescription: 'Some description about product',
          productImage: 'abd',
          productName: 'Third')
    ];

    products.value = productResult;
  }
}
