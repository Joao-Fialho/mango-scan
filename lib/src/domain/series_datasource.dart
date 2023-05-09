import 'package:dio/dio.dart';
import 'package:mango_staff/src/domain/series_entity.dart';

class SeriesDatasource {
  final Dio dio = Dio();

  @override
  Future<List<SeriesEntity>> fetchSeries() async {
    const url = 'https://msbrflaskapp99.herokuapp.com/api/series';
    final response = await dio.get(url);

    final body = (response.data['series']) as List;
    return SeriesMapper().toList(body);
  }
}

class SeriesMapper {
  SeriesEntity toMapper(Map map) {
    return SeriesEntity(
      capa: map['link_capa'] ?? 0.0,
      nome: map['nome'] ?? '',
      quantCap: map['qtd_capitulos'] ?? 0,
      restricaoDeRegistro: map['restricao_registro'] ?? 0,
      status: map['status'] ?? '',
      tipoDaSerie: map['tipo_serie'] ?? '',
      valorCap: (map['valor_capitulo'] ?? 1.0).toDouble(),
    );
  }

  List<SeriesEntity> toList(List<dynamic> value) {
    final valueOficial = value.map((object) => toMapper(object)).toList();
    return valueOficial;
  }
}
