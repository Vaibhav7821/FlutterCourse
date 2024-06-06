import 'package:flutter/material.dart';
import 'package:product_app/models/product_model.dart';

class Product with ChangeNotifier {
  List<ProductModelClass> productList = [];

  void addProductDetails(ProductModelClass obj) {
    productList.add(obj);
    
  }

  void addQuantity(ProductModelClass obj) {
    obj.quantity++;
    notifyListeners();
  }

  void removeQuantity(ProductModelClass obj) {
    if (obj.quantity > 1) {
      obj.quantity--;
      notifyListeners();
    }
  }

  void addIsFavorite(ProductModelClass obj) {
    obj.isFavorite = !obj.isFavorite;
    notifyListeners();
  }
}
