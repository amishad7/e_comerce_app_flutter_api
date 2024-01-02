import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class ProductsAPI {
  ProductsAPI._();

  static final ProductsAPI productsAPI = ProductsAPI._();

  productsData() async {
    String api = "https://fakestoreapi.com/products";

    http.Response response = await http.get(Uri.parse(api));

    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);

      log(decodedData);
    } else {
      return null;
    }
  }
}
