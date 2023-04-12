import 'package:get/state_manager.dart';
import 'package:shopping_app/models/product.dart';

class CartController extends GetxController {
  RxList<Product> cartItems = <Product>[].obs;

  int get count => cartItems.length;

  double get totalPrice =>
      cartItems.fold(0, (sum, item) => sum + int.parse(item.price.toString()));

  addToCart(Product product) {
    cartItems.add(product);
  }
}
