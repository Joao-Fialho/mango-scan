import 'package:flutter/material.dart';
import 'package:mango_staff/src/domain/series_entity.dart';

import '../../domain/series_datasource.dart';

class SeriesPageController {
  SeriesDatasource datasource = SeriesDatasource();
  // List<SeriesEntity> listMock = [

  // ];

  late List<SeriesEntity> seriesList = [
    SeriesEntity(
        capa:
            'https://img.elo7.com.br/product/zoom/2BE1444/big-poster-anime-dr-stone-lo011-tamanho-90x60-cm-cartaz.jpg',
        nome: 'Dr.Stone - Anime'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/91eLWt-OYfL.jpg',
        nome: 'Dr.Stone - Vol.15'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/914uzy-SQyL.jpg',
        nome: 'Dr.Stone - Vol.10'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/91ptjKqN5PL.jpg',
        nome: 'Demon Slayer - Vol.10'),
    SeriesEntity(
        capa:
            'https://http2.mlstatic.com/D_NQ_NP_866211-MLU50423326106_062022-O.webp',
        nome: 'Demon Slayer - Vol.12'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/71EtXb3PHRL.jpg',
        nome: 'Toradora'),
    SeriesEntity(
        capa:
            'https://us-east-1.linodeobjects.com/novelmania/uploads/novel/cover/111/capa_ve.jpg',
        nome: 'Violet Evergarden'),
    SeriesEntity(
        capa:
            'https://us-east-1.linodeobjects.com/novelmania/uploads/novel/cover/111/capa_ve.jpg',
        nome: 'Senshiou Buta Yarou Bunny Girl Senpai no minay'),
    SeriesEntity(
        capa:
            'https://www.baka-tsuki.org/project/images/1/1c/YahariLoveCom-000a.jpg',
        nome: 'Oregairu'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/918BUMUWB6L.jpg',
        nome: 'SAO - Sword Art Online'),
    SeriesEntity(
        capa:
            'https://img.elo7.com.br/product/zoom/2BE1444/big-poster-anime-dr-stone-lo011-tamanho-90x60-cm-cartaz.jpg',
        nome: 'Dr.Stone - Anime'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/91eLWt-OYfL.jpg',
        nome: 'Dr.Stone - Vol.15'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/914uzy-SQyL.jpg',
        nome: 'Dr.Stone - Vol.10'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/91ptjKqN5PL.jpg',
        nome: 'Demon Slayer - Vol.10'),
    SeriesEntity(
        capa:
            'https://http2.mlstatic.com/D_NQ_NP_866211-MLU50423326106_062022-O.webp',
        nome: 'Demon Slayer - Vol.12'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/71EtXb3PHRL.jpg',
        nome: 'Toradora'),
    SeriesEntity(
        capa:
            'https://us-east-1.linodeobjects.com/novelmania/uploads/novel/cover/111/capa_ve.jpg',
        nome: 'Violet Evergarden'),
    SeriesEntity(
        capa:
            'https://us-east-1.linodeobjects.com/novelmania/uploads/novel/cover/111/capa_ve.jpg',
        nome: 'Senshiou Buta Yarou Bunny Girl Senpai no minay'),
    SeriesEntity(
        capa:
            'https://www.baka-tsuki.org/project/images/1/1c/YahariLoveCom-000a.jpg',
        nome: 'Oregairu'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/918BUMUWB6L.jpg',
        nome: 'SAO - Sword Art Online'),
    SeriesEntity(
        capa:
            'https://img.elo7.com.br/product/zoom/2BE1444/big-poster-anime-dr-stone-lo011-tamanho-90x60-cm-cartaz.jpg',
        nome: 'Dr.Stone - Anime'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/91eLWt-OYfL.jpg',
        nome: 'Dr.Stone - Vol.15'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/914uzy-SQyL.jpg',
        nome: 'Dr.Stone - Vol.10'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/91ptjKqN5PL.jpg',
        nome: 'Demon Slayer - Vol.10'),
    SeriesEntity(
        capa:
            'https://http2.mlstatic.com/D_NQ_NP_866211-MLU50423326106_062022-O.webp',
        nome: 'Demon Slayer - Vol.12'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/71EtXb3PHRL.jpg',
        nome: 'Toradora'),
    SeriesEntity(
        capa:
            'https://us-east-1.linodeobjects.com/novelmania/uploads/novel/cover/111/capa_ve.jpg',
        nome: 'Violet Evergarden'),
    SeriesEntity(
        capa:
            'https://us-east-1.linodeobjects.com/novelmania/uploads/novel/cover/111/capa_ve.jpg',
        nome: 'Senshiou Buta Yarou Bunny Girl Senpai no minay'),
    SeriesEntity(
        capa:
            'https://www.baka-tsuki.org/project/images/1/1c/YahariLoveCom-000a.jpg',
        nome: 'Oregairu'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/918BUMUWB6L.jpg',
        nome: 'SAO - Sword Art Online'),
    SeriesEntity(
        capa:
            'https://img.elo7.com.br/product/zoom/2BE1444/big-poster-anime-dr-stone-lo011-tamanho-90x60-cm-cartaz.jpg',
        nome: 'Dr.Stone - Anime'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/91eLWt-OYfL.jpg',
        nome: 'Dr.Stone - Vol.15'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/914uzy-SQyL.jpg',
        nome: 'Dr.Stone - Vol.10'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/91ptjKqN5PL.jpg',
        nome: 'Demon Slayer - Vol.10'),
    SeriesEntity(
        capa:
            'https://http2.mlstatic.com/D_NQ_NP_866211-MLU50423326106_062022-O.webp',
        nome: 'Demon Slayer - Vol.12'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/71EtXb3PHRL.jpg',
        nome: 'Toradora'),
    SeriesEntity(
        capa:
            'https://us-east-1.linodeobjects.com/novelmania/uploads/novel/cover/111/capa_ve.jpg',
        nome: 'Violet Evergarden'),
    SeriesEntity(
        capa:
            'https://us-east-1.linodeobjects.com/novelmania/uploads/novel/cover/111/capa_ve.jpg',
        nome: 'Senshiou Buta Yarou Bunny Girl Senpai no minay'),
    SeriesEntity(
        capa:
            'https://www.baka-tsuki.org/project/images/1/1c/YahariLoveCom-000a.jpg',
        nome: 'Oregairu'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/918BUMUWB6L.jpg',
        nome: 'SAO - Sword Art Online'),
    SeriesEntity(
        capa:
            'https://img.elo7.com.br/product/zoom/2BE1444/big-poster-anime-dr-stone-lo011-tamanho-90x60-cm-cartaz.jpg',
        nome: 'Dr.Stone - Anime'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/91eLWt-OYfL.jpg',
        nome: 'Dr.Stone - Vol.15'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/914uzy-SQyL.jpg',
        nome: 'Dr.Stone - Vol.10'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/91ptjKqN5PL.jpg',
        nome: 'Demon Slayer - Vol.10'),
    SeriesEntity(
        capa:
            'https://http2.mlstatic.com/D_NQ_NP_866211-MLU50423326106_062022-O.webp',
        nome: 'Demon Slayer - Vol.12'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/71EtXb3PHRL.jpg',
        nome: 'Toradora'),
    SeriesEntity(
        capa:
            'https://us-east-1.linodeobjects.com/novelmania/uploads/novel/cover/111/capa_ve.jpg',
        nome: 'Violet Evergarden'),
    SeriesEntity(
        capa:
            'https://us-east-1.linodeobjects.com/novelmania/uploads/novel/cover/111/capa_ve.jpg',
        nome: 'Senshiou Buta Yarou Bunny Girl Senpai no minay'),
    SeriesEntity(
        capa:
            'https://www.baka-tsuki.org/project/images/1/1c/YahariLoveCom-000a.jpg',
        nome: 'Oregairu'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/918BUMUWB6L.jpg',
        nome: 'SAO - Sword Art Online'),
    SeriesEntity(
        capa:
            'https://img.elo7.com.br/product/zoom/2BE1444/big-poster-anime-dr-stone-lo011-tamanho-90x60-cm-cartaz.jpg',
        nome: 'Dr.Stone - Anime'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/91eLWt-OYfL.jpg',
        nome: 'Dr.Stone - Vol.15'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/914uzy-SQyL.jpg',
        nome: 'Dr.Stone - Vol.10'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/91ptjKqN5PL.jpg',
        nome: 'Demon Slayer - Vol.10'),
    SeriesEntity(
        capa:
            'https://http2.mlstatic.com/D_NQ_NP_866211-MLU50423326106_062022-O.webp',
        nome: 'Demon Slayer - Vol.12'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/71EtXb3PHRL.jpg',
        nome: 'Toradora'),
    SeriesEntity(
        capa:
            'https://us-east-1.linodeobjects.com/novelmania/uploads/novel/cover/111/capa_ve.jpg',
        nome: 'Violet Evergarden'),
    SeriesEntity(
        capa:
            'https://us-east-1.linodeobjects.com/novelmania/uploads/novel/cover/111/capa_ve.jpg',
        nome: 'Senshiou Buta Yarou Bunny Girl Senpai no minay'),
    SeriesEntity(
        capa:
            'https://www.baka-tsuki.org/project/images/1/1c/YahariLoveCom-000a.jpg',
        nome: 'Oregairu'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/918BUMUWB6L.jpg',
        nome: 'SAO - Sword Art Online'),
    SeriesEntity(
        capa:
            'https://img.elo7.com.br/product/zoom/2BE1444/big-poster-anime-dr-stone-lo011-tamanho-90x60-cm-cartaz.jpg',
        nome: 'Dr.Stone - Anime'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/91eLWt-OYfL.jpg',
        nome: 'Dr.Stone - Vol.15'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/914uzy-SQyL.jpg',
        nome: 'Dr.Stone - Vol.10'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/91ptjKqN5PL.jpg',
        nome: 'Demon Slayer - Vol.10'),
    SeriesEntity(
        capa:
            'https://http2.mlstatic.com/D_NQ_NP_866211-MLU50423326106_062022-O.webp',
        nome: 'Demon Slayer - Vol.12'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/71EtXb3PHRL.jpg',
        nome: 'Toradora'),
    SeriesEntity(
        capa:
            'https://us-east-1.linodeobjects.com/novelmania/uploads/novel/cover/111/capa_ve.jpg',
        nome: 'Violet Evergarden'),
    SeriesEntity(
        capa:
            'https://us-east-1.linodeobjects.com/novelmania/uploads/novel/cover/111/capa_ve.jpg',
        nome: 'Senshiou Buta Yarou Bunny Girl Senpai no minay'),
    SeriesEntity(
        capa:
            'https://www.baka-tsuki.org/project/images/1/1c/YahariLoveCom-000a.jpg',
        nome: 'Oregairu'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/918BUMUWB6L.jpg',
        nome: 'SAO - Sword Art Online'),
    SeriesEntity(
        capa:
            'https://img.elo7.com.br/product/zoom/2BE1444/big-poster-anime-dr-stone-lo011-tamanho-90x60-cm-cartaz.jpg',
        nome: 'Dr.Stone - Anime'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/91eLWt-OYfL.jpg',
        nome: 'Dr.Stone - Vol.15'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/914uzy-SQyL.jpg',
        nome: 'Dr.Stone - Vol.10'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/91ptjKqN5PL.jpg',
        nome: 'Demon Slayer - Vol.10'),
    SeriesEntity(
        capa:
            'https://http2.mlstatic.com/D_NQ_NP_866211-MLU50423326106_062022-O.webp',
        nome: 'Demon Slayer - Vol.12'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/71EtXb3PHRL.jpg',
        nome: 'Toradora'),
    SeriesEntity(
        capa:
            'https://us-east-1.linodeobjects.com/novelmania/uploads/novel/cover/111/capa_ve.jpg',
        nome: 'Violet Evergarden'),
    SeriesEntity(
        capa:
            'https://us-east-1.linodeobjects.com/novelmania/uploads/novel/cover/111/capa_ve.jpg',
        nome: 'Senshiou Buta Yarou Bunny Girl Senpai no minay'),
    SeriesEntity(
        capa:
            'https://www.baka-tsuki.org/project/images/1/1c/YahariLoveCom-000a.jpg',
        nome: 'Oregairu'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/918BUMUWB6L.jpg',
        nome: 'SAO - Sword Art Online'),
    SeriesEntity(
        capa:
            'https://img.elo7.com.br/product/zoom/2BE1444/big-poster-anime-dr-stone-lo011-tamanho-90x60-cm-cartaz.jpg',
        nome: 'Dr.Stone - Anime'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/91eLWt-OYfL.jpg',
        nome: 'Dr.Stone - Vol.15'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/914uzy-SQyL.jpg',
        nome: 'Dr.Stone - Vol.10'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/91ptjKqN5PL.jpg',
        nome: 'Demon Slayer - Vol.10'),
    SeriesEntity(
        capa:
            'https://http2.mlstatic.com/D_NQ_NP_866211-MLU50423326106_062022-O.webp',
        nome: 'Demon Slayer - Vol.12'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/71EtXb3PHRL.jpg',
        nome: 'Toradora'),
    SeriesEntity(
        capa:
            'https://us-east-1.linodeobjects.com/novelmania/uploads/novel/cover/111/capa_ve.jpg',
        nome: 'Violet Evergarden'),
    SeriesEntity(
        capa:
            'https://us-east-1.linodeobjects.com/novelmania/uploads/novel/cover/111/capa_ve.jpg',
        nome: 'Senshiou Buta Yarou Bunny Girl Senpai no minay'),
    SeriesEntity(
        capa:
            'https://www.baka-tsuki.org/project/images/1/1c/YahariLoveCom-000a.jpg',
        nome: 'Oregairu'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/918BUMUWB6L.jpg',
        nome: 'SAO - Sword Art Online'),
    SeriesEntity(
        capa:
            'https://img.elo7.com.br/product/zoom/2BE1444/big-poster-anime-dr-stone-lo011-tamanho-90x60-cm-cartaz.jpg',
        nome: 'Dr.Stone - Anime'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/91eLWt-OYfL.jpg',
        nome: 'Dr.Stone - Vol.15'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/914uzy-SQyL.jpg',
        nome: 'Dr.Stone - Vol.10'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/91ptjKqN5PL.jpg',
        nome: 'Demon Slayer - Vol.10'),
    SeriesEntity(
        capa:
            'https://http2.mlstatic.com/D_NQ_NP_866211-MLU50423326106_062022-O.webp',
        nome: 'Demon Slayer - Vol.12'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/71EtXb3PHRL.jpg',
        nome: 'Toradora'),
    SeriesEntity(
        capa:
            'https://us-east-1.linodeobjects.com/novelmania/uploads/novel/cover/111/capa_ve.jpg',
        nome: 'Violet Evergarden'),
    SeriesEntity(
        capa:
            'https://us-east-1.linodeobjects.com/novelmania/uploads/novel/cover/111/capa_ve.jpg',
        nome: 'Senshiou Buta Yarou Bunny Girl Senpai no minay'),
    SeriesEntity(
        capa:
            'https://www.baka-tsuki.org/project/images/1/1c/YahariLoveCom-000a.jpg',
        nome: 'Oregairu'),
    SeriesEntity(
        capa: 'https://m.media-amazon.com/images/I/918BUMUWB6L.jpg',
        nome: 'SAO - Sword Art Online'),
  ];
  // List<SeriesEntity> listMockMetodo() {
  //   seriesList = [];
  //   for (var i = 0; i < 15; i++) {
  //     for (var x = 0; x < listMock.length; x++) {
  //       listMock.add(listMock[x]);
  //     }
  //   }
  //   return seriesList;
  // }

  List<SeriesEntity> searchList = [];
  // List listMock = [];
  Future<void> getSeriesList() async {
    seriesList = await datasource.fetchSeries();
  }

/////TODO - Refatorar esses nomes de variaveis
  ///Metodos para a paginacao
  List<SeriesEntity> separateListByPage(pageItemCount, selectedPageNumber) {
    var index = pageItemCount * (selectedPageNumber - 1);
    List<SeriesEntity> listPage = [];
    var count;

    if (index + pageItemCount > seriesList.length) {
      count = seriesList.length - index;
    } else {
      count = pageItemCount;
    }

    for (var i = 0; i < count; i++) {
      listPage.add(seriesList[index]);
      index++;
    }
    return listPage;
  }

  int pageTotalCalculator(listLength, itemCount) {
    if (listLength % itemCount != 0) {
      return ((listLength / itemCount)).toInt() + 1;
    }
    return listLength / itemCount;
  }

  int thresholdCalculator(width) {
    int threshold;
    if (width < 560) {
      threshold = 1;
    } else if (width < 620) {
      threshold = 2;
    } else if (width < 690) {
      threshold = 3;
    } else if (width < 760) {
      threshold = 4;
    } else if (width < 831) {
      threshold = 5;
    } else if (width < 870) {
      threshold = 6;
    } else if (width < 940) {
      threshold = 7;
    } else if (width < 970) {
      threshold = 8;
    } else if (width < 1032) {
      threshold = 9;
    } else {
      threshold = 10;
    }
    return threshold;
  }

  List<SeriesEntity> searchByTitle(String searchValue) {
    //Faz a mesma coisa que meu for fazia ele percorre a lista de um jeito mais eficiente

    final List<SeriesEntity> listSearch = seriesList
        .where(
          (element) =>
              element.nome!.toLowerCase().contains(searchValue.toLowerCase()),
        )
        .toList();

    // if (listSearch.isEmpty && searchValue != '') {
    //   searchFound = true;
    // } else {
    //   searchFound = false;
    // }
    // update(listSearch);
    return listSearch;
  }
}

//Flexible(
//                         flex: 4,
//                         child: RegisterCapCard(
//                             tituloCap: controller
//                                 .seriesList[index + index]
//                                 .nome,
//                             capaImage: controller
//                                 .seriesList[index + index]
//                                 .capa),
//                       ),
