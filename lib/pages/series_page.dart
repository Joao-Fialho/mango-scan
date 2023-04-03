import 'package:flutter/material.dart';
import 'package:mango_staff/components/series/historico_capitulos_card.dart';
import '../components/geral/app_bar.dart';
import '../components/series/capitulo_feito_card.dart';
import '../components/series/registro_cap_card.dart';

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///Historico de Registros

              Container(
                height: size.height * 0.85,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///Barra de pesquisa
                    Container(
                      alignment: Alignment.center,
                      width: size.width * 0.25,
                      height: size.width * .04,
                      child: TextFormField(
                        cursorColor: Colors.white,
                        textInputAction: TextInputAction.search,
                        style: TextStyle(
                          fontSize: size.width * .009,
                          color: Colors.white,
                          overflow: TextOverflow.ellipsis,
                        ),
                        decoration: InputDecoration(
                          labelText: 'Pesquisar',
                          contentPadding: const EdgeInsets.only(
                              left: 11, bottom: 11, top: 11, right: 5),
                          labelStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                        ),
                      ),
                    ),
                   HistoricoCapitulosCard()
                  ],
                ),
              ),

              ///Lista de series para resgistrarem
              SizedBox(
                height: size.height * 0.85,
                width: size.width * 0.65,
                child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                          height: size.height * 0.01,
                        ),
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return Container(
                        width: size.width * 0.7,
                        height: size.height * 0.3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            AspectRatio(
                              aspectRatio: 2,
                              child: RegistroCapCard(),
                            ),
                            AspectRatio(
                              aspectRatio: 2,
                              child: RegistroCapCard(),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
