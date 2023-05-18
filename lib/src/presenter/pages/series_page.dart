import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:mango_staff/core/widgets/mango_app_bar.dart';
import 'package:mango_staff/src/domain/series_entity.dart';
import 'package:mango_staff/src/presenter/components/series/history_cap_done_card.dart';
import 'package:mango_staff/src/presenter/components/series/register_cap_card.dart';
import '../../../core/app_colors.dart';
import '../../../core/packges/number_pagination.dart';
import '../components/series/series_search_bar_component.dart';
import '../controllers/series_page_controller.dart';
import 'package:flutter_web_pagination/flutter_web_pagination.dart';

class SeriesPage extends StatefulWidget {
  const SeriesPage({super.key});
  @override
  State<SeriesPage> createState() => _SeriesPageState();
}

class _SeriesPageState extends State<SeriesPage> {
  SeriesPageController controller = SeriesPageController();
  int selectedPageNumber = 1;
  String searchValue = '';

  late int pageItemCount;
  @override
  void initState() {
    // controller.seriesList = controller.listMockMetodo();

    controller.getSeriesList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors().primaryColor,
      appBar: MangoAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(size.width * .01),
            width: size.width * 0.95,
            height: size.height * 0.9,
            child: LayoutBuilder(builder: (context, constraints) {
              ///Monitor Padrao
              //TODO - Implementar regra para atualizar tela depois que mudar a resolucao
              if (size.width > 1930) {
                pageItemCount = 15;

                if (searchValue != '') {
                  controller.searchByTitle(searchValue);
                }
                controller.separateListByPage(
                    pageItemCount, selectedPageNumber);
                // if (selectedPageNumber >
                //     controller.pageTotalCalculator(
                //         controller.listMock.length, pageItemCount)) {
                //   selectedPageNumber = 1;

                // }

                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///Historico de Registros
                    Flexible(
                      flex: 2,
                      child: SizedBox(
                        height: size.height * .9,
                        child: LayoutBuilder(builder: (context, constraints) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ///Barra de pesquisa

                              ScopedBuilder<SeriesPageController,
                                      List<SeriesEntity>>(
                                  store: controller,
                                  onState: (context, state) {
                                    return SeriesSearchBarComponent(
                                      onChanged: (value) {
                                        searchValue = value;
                                        // setState(() {
                                        //   controller.searchByTitle(searchValue);
                                        // });
                                      },
                                      constraints: constraints,
                                    );
                                  }),

                              SizedBox(
                                height: constraints.maxHeight * .02,
                              ),
                              Expanded(
                                  child: HistoryCapDoneCard(
                                      constraints: constraints)),
                            ],
                          );
                        }),
                      ),
                    ),

                    ///Lista de series para resgistrarem
                    Flexible(
                      flex: 8,
                      child: SizedBox(
                        width: size.width * 0.7,
                        child: ScopedBuilder<SeriesPageController,
                                List<SeriesEntity>>(
                            store: controller,
                            onError: (context, error) => Container(),
                            onLoading: (context) => Container(),
                            onState: (context, state) {
                              return Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: GridView.builder(
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisSpacing: 20,
                                          mainAxisSpacing: 20,
                                          childAspectRatio: 16 / 9,
                                          crossAxisCount: 3,
                                        ),
                                        itemCount: state.length,
                                        itemBuilder: (BuildContext ctx, index) {
                                          return RegisterCapCard(
                                            tituloCap:
                                                state[index].nome.toString(),
                                            capaImage:
                                                state[index].capa.toString(),
                                          );
                                        }),
                                  ),
                                  SizedBox(
                                    child: NumberPagination(
                                      onPageChanged: (int pageNumber) {
                                        setState(() {
                                          selectedPageNumber = pageNumber;
                                          controller.separateListByPage(
                                              pageItemCount,
                                              selectedPageNumber);
                                        });
                                      },
                                      pageTotal: controller
                                          .pageTotalCalculator(pageItemCount),
                                      pageInit:
                                          1, // picked number when init page
                                      colorPrimary: Colors.white,
                                      colorSub: AppColors().sencondColor,
                                    ),
                                  ),
                                ],
                              );
                            }),
                      ),
                    ),
                  ],
                );
              } else if (size.width >= 960 && size.width <= 1930) {
                pageItemCount = 10;

                controller.separateListByPage(
                    pageItemCount, selectedPageNumber);

                return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///Historico de Registros
                      Flexible(
                        flex: 2,
                        child: LayoutBuilder(builder: (context, constraints) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ///Barra de pesquisa
                              SeriesSearchBarComponent(
                                onChanged: (value) {
                                  // searchValue = value;
                                  // setState(() {
                                  //   controller.searchByTitle(searchValue);
                                  // });
                                },
                                constraints: constraints,
                              ),

                              SizedBox(
                                height: constraints.maxHeight * 0.02,
                              ),
                              Expanded(
                                  child: HistoryCapDoneCard(
                                      constraints: constraints))
                            ],
                          );
                        }),
                      ),

                      ///Lista de series para resgistrarem
                      Flexible(
                        flex: 5,
                        child: SizedBox(
                          width: size.width * 0.6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ScopedBuilder<SeriesPageController,
                                      List<SeriesEntity>>(
                                  store: controller,
                                  onError: (context, error) => Container(),
                                  onLoading: (context) => Container(),
                                  onState: (context, state) {
                                    return Expanded(
                                      child: GridView.builder(
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisSpacing: 20,
                                            mainAxisSpacing: 20,
                                            childAspectRatio: 15 / 8,
                                            crossAxisCount: 2,
                                          ),
                                          itemCount: state.length,
                                          itemBuilder:
                                              (BuildContext ctx, index) {
                                            return RegisterCapCard(
                                              tituloCap:
                                                  state[index].nome.toString(),
                                              capaImage:
                                                  state[index].capa.toString(),
                                            );
                                          }),
                                    );
                                  }),
                              SizedBox(
                                child: NumberPagination(
                                  threshold: controller
                                      .thresholdCalculator(size.width),
                                  onPageChanged: (int pageNumber) {
                                    //do somthing for selected page
                                    setState(() {
                                      selectedPageNumber = pageNumber;
                                      controller.separateListByPage(
                                          pageItemCount, selectedPageNumber);
                                    });
                                  },
                                  pageTotal: controller
                                      .pageTotalCalculator(pageItemCount),
                                  pageInit: 1, // picked number when init page
                                  colorPrimary: Colors.white,
                                  colorSub: AppColors().sencondColor,
                                ),
                              ),
                            ],

                            ///
                          ),
                        ),
                      )
                    ]);

                ///Metade de um Monitor Padrao
              } else if (size.width < 960) {
                pageItemCount = 10;
                controller.separateListByPage(
                    pageItemCount, selectedPageNumber);
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///Historico de Registros
                    Flexible(
                      flex: 3,
                      child: SizedBox(
                        height: size.height * .9,
                        child: LayoutBuilder(builder: (context, constraints) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ///Barra de pesquisa

                              SeriesSearchBarComponent(
                                onChanged: (value) {
                                  searchValue = value;
                                },
                                constraints: constraints,
                              ),

                              SizedBox(
                                height: constraints.maxHeight * 0.02,
                              ),
                              Expanded(
                                  child: HistoryCapDoneCard(
                                      constraints: constraints)),
                            ],
                          );
                        }),
                      ),
                    ),

                    ///Lista de series para resgistrarem
                    Flexible(
                      flex: 4,
                      child: SizedBox(
                        width: size.width * 0.5,
                        child: ScopedBuilder<SeriesPageController,
                                List<SeriesEntity>>(
                            store: controller,
                            onState: (context, state) {
                              return Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: GridView.builder(
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisSpacing: 20,
                                          mainAxisSpacing: 20,
                                          childAspectRatio: 15 / 8,
                                          crossAxisCount: 1,
                                        ),
                                        itemCount: state.length,
                                        itemBuilder: (BuildContext ctx, index) {
                                          return RegisterCapCard(
                                            tituloCap:
                                                state[index].nome.toString(),
                                            capaImage:
                                                state[index].capa.toString(),
                                          );
                                        }),
                                  ),
                                  SizedBox(
                                    child: NumberPagination(
                                      threshold: controller
                                          .thresholdCalculator(size.width),
                                      onPageChanged: (int pageNumber) {
                                        //do somthing for selected page
                                        setState(() {
                                          selectedPageNumber = pageNumber;
                                          controller.separateListByPage(
                                              pageItemCount,
                                              selectedPageNumber);
                                        });
                                      },
                                      pageTotal: controller
                                          .pageTotalCalculator(pageItemCount),
                                      pageInit:
                                          1, // picked number when init page
                                      colorPrimary: Colors.white,
                                      colorSub: AppColors().sencondColor,
                                    ),
                                  ),
                                ],
                              );
                            }),
                      ),
                    ),
                  ],
                );
              } else {
                return Container(
                  alignment: Alignment.center,
                  child: const Text(
                      'Resolução nao encontrada por favor entrar em contato com o suporte!!',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 100)),
                );
              }
            }),
          ),
        ),
      ),
    );
  }
}
