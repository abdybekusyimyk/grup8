import 'package:dio/dio.dart';
import 'package:provider_api/model.dart';
// import 'package:provider_api/product_view_model.dart';

class ApiService {
  Future getModelPRoduct() async {
    Dio dio = Dio();

    print('Response keti');

    Response response =
        await dio.get('https://jsonplaceholder.typicode.com/posts');
    print(response.data);

    if (response.statusCode == 200 && response.statusCode == 201) {
      print('data KEldi');

      List<dynamic> products =
          response.data.map((e) => Model.fromJson(e)).toList();
      return products;
    }
  }
}
