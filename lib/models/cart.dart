import 'package:shop/models/cloth.dart';

class Cart {
  static final Cart _instance = Cart._internal();
  factory Cart() {
    return _instance;
  }
  Cart._internal();

  List<Cloth> userCart = [];

  List<Cloth> getUserCart() {
    return userCart;
  }

  void addItemToCart(Cloth cloth) {
    userCart.add(cloth);
  }

  void removeItemFromCart(Cloth cloth) {
    userCart.remove(cloth);
  }
}
