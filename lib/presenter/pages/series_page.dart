import 'package:flutter/material.dart';
import 'package:mango_staff/presenter/components/series/historico_capitulos_card.dart';
import 'package:mango_staff/presenter/controllers/responsividade_controller.dart';
import '../components/geral/app_bar.dart';
import '../components/series/capitulo_feito_card.dart';
import '../components/series/registro_cap_card.dart';
import '../components/series/series_search_bar_component.dart';

class SeriesPage extends StatefulWidget {
  const SeriesPage({super.key});

  @override
  State<SeriesPage> createState() => _SeriesPageState();
}

class _SeriesPageState extends State<SeriesPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    print(size.width);

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBarComponent(),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(size.width * .01),
          width: size.width * 0.95,
          height: size.height * 0.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///Historico de Registros
              Flexible(
                flex: 2,
                child: Container(
                  height: size.height * .9,
                  color: Colors.amber,
                  child: LayoutBuilder(builder: (context, constraints) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ///Barra de pesquisa
                        Flexible(
                          flex: 1,
                          child: SeriesSearchBarComponent(
                            constraints: constraints,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: SizedBox(
                            height: constraints.maxHeight * .01,
                          ),
                        ),
                        Flexible(
                            flex: 12,
                            child: HistoricoCapitulosCard(
                                constraints: constraints)),
                      ],
                    );
                  }),
                ),
              ),
              // Flexible(
              //   flex: 1,
              //   child: SizedBox(
              //     width: size.width * .015,
              //   ),
              // ),

              ///Lista de series para resgistrarem
              Flexible(
                flex: 5,
                child: Container(
                  color: Colors.red,
                  width: size.width * 0.63,
                  child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                            height: size.height * 0.01,
                          ),
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        if (size.width < 1930) {
                          return Container(
                            height: size.width * 0.15,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Flexible(
                                  flex: 4,
                                  child: RegistroCapCard(),
                                ),
                                Flexible(
                                  flex: 4,
                                  child: RegistroCapCard(),
                                ),
                              ],
                            ),
                          );
                        } else if (size.width > 1930) {
                          return Container(
                            height: size.width * 0.11,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Flexible(
                                  flex: 4,
                                  child: RegistroCapCard(),
                                ),
                                Flexible(
                                  flex: 4,
                                  child: RegistroCapCard(),
                                ),
                                Flexible(
                                  flex: 4,
                                  child: RegistroCapCard(),
                                ),
                              ],
                            ),
                          );
                        } else {
                          return RegistroCapCard();
                        }
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
