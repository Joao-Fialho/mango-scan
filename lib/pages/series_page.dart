import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../components/app_bar.dart';
import '../components/bottom_navigation_bar_custom.dart';
import '../components/card_historico_registro.dart';
import '../components/resgistro_cap_por_funcao_button.dart';

class SeriesPage extends StatefulWidget {
  const SeriesPage({super.key});

  @override
  State<SeriesPage> createState() => _SeriesPageState();
}

class _SeriesPageState extends State<SeriesPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBarComponent(),
      body: Center(
        child: Container(
          width: size.width * 0.95,
          child: Padding(
            padding: EdgeInsets.only(
                //top: size.width * 0.09,
                // left: size.width * 0.05,
                ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width * 0.22,
                  color: Colors.amber,
                  height: size.height * 0.85,
                  child: Column(children: [
                    Text('Valor total: 100'),
                    Container(child: HitoricoRegistroCard())
                  ]),
                ),
                SizedBox(
                  height: size.height * 0.85,
                  width: size.width * 0.5,
                  child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                            height: size.height * 0.01,
                          ),
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return Container(
                          color: Colors.grey.shade800,
                          child: ExpansionTile(
                            iconColor: Colors.white,
                            title: const Text(
                              'Nome da obra',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            collapsedIconColor: Colors.grey.shade900,
                            children: [
                              Container(
                                  padding: EdgeInsets.all(size.width * 0.015),
                                  color: Colors.grey.shade700,
                                  height: size.height * 0.4,
                                  //width: size.width * 0.5,
                                  child: LayoutBuilder(
                                      builder: (context, constraints) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: size.width * 0.01),
                                          child: AspectRatio(
                                            aspectRatio: 3 / 4,
                                            child: Container(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        // Padding(
                                        //   padding: EdgeInsets.only(
                                        //       right: size.width * 0.01),
                                        //   child: FittedBox(
                                        //     child: Table(
                                        //       defaultColumnWidth:
                                        //           FixedColumnWidth(
                                        //               constraints.maxWidth *
                                        //                   0.1),
                                        //       border: TableBorder.all(
                                        //         color: Colors.grey.shade900,
                                        //       ),
                                        //       children: [
                                        //         TableRow(children: [
                                        //           Text(
                                        //             'Cap',
                                        //             textAlign: TextAlign.center,
                                        //           ),
                                        //           Text(
                                        //             'Tradutor',
                                        //             textAlign: TextAlign.center,
                                        //           ),
                                        //           Text(
                                        //             'Edição',
                                        //             textAlign: TextAlign.center,
                                        //           ),
                                        //           Text(
                                        //             'Limpeza',
                                        //             textAlign: TextAlign.center,
                                        //           ),
                                        //         ]),
                                        //         TableRow(children: [
                                        //           Text(
                                        //             'Nº',
                                        //             textAlign: TextAlign.center,
                                        //           ),
                                        //           Text(
                                        //             'Nome',
                                        //             textAlign: TextAlign.center,
                                        //           ),
                                        //           Text(
                                        //             'Nome',
                                        //             textAlign: TextAlign.center,
                                        //           ),
                                        //           Text(
                                        //             'Nome',
                                        //             textAlign: TextAlign.center,
                                        //           ),
                                        //         ]),
                                        //       ],
                                        //     ),
                                        //   ),
                                        // ),
                                        FittedBox(
                                          child: Column(
                                            children: [
                                              Container(
                                                width: size.width * 0.35,
                                                child: TextFormField(
                                                  cursorColor: Colors.white,
                                                  textInputAction:
                                                      TextInputAction.search,
                                                  style: TextStyle(
                                                    fontSize: size.width * .009,
                                                    color: Colors.white,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                  decoration: InputDecoration(
                                                    labelText: 'Nº Cap.',
                                                    isDense: true,
                                                    // contentPadding:
                                                    //     const EdgeInsets.only(
                                                    //         left: 11,
                                                    //         bottom: 20,
                                                    //         top: 20,
                                                    //         right: 5),
                                                    labelStyle: const TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .white)),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .white)),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  height:
                                                      constraints.maxHeight *
                                                          0.1),
                                              Container(
                                                width:
                                                    constraints.maxWidth * 0.35,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    RegistroCapPorFuncaoButton(
                                                      title: 'Tradução',
                                                    ),
                                                    RegistroCapPorFuncaoButton(
                                                      title: 'Edição',
                                                    ),
                                                    RegistroCapPorFuncaoButton(
                                                      title: 'Limpeza',
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    );
                                  })),
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
      //  bottomNavigationBar: const BottomNavigationBarCustom(),
    );
  }
}
