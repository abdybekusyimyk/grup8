import 'package:flutter/material.dart';
import 'package:provider_api/appi_service.dart';
import 'package:provider_api/model.dart';
// import 'package:provider_api/model.dart';

class ProductViewModel extends ChangeNotifier {
  List<dynamic> products = [];

  Future getAllProducts() async {
    notifyListeners();
    products = await ApiService().getModelPRoduct();
    print(products);
  }
}
