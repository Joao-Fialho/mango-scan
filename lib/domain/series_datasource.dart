import 'package:dio/dio.dart';

class AllDatasource {
  final Dio dio = Dio();

  @override
  Future fetchAll() async {
    try {
      const url = 'http://127.0.0.1:55890/api/series';
      final response = await dio.get(
        url,
        // options: Options(method: "get", headers: {
        //   "ngrok-skip-browser-warning": "69420",
        // })
      );

      final body = response.data['series'];

      print(body['link_capa']);
      print(body['nome']);
      print(body['qtd_capitulos']);
      print(body['valor_capitulo']);

      //return AllMapper().toList(body);
    } on DioError catch (e) {
      //throw AllDatasourceError(menssageError: e.message);
    }
  }
}
