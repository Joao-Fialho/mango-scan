import 'package:flutter/material.dart';
import '../components/geral/app_bar.dart';
import '../components/series/historico_registro_card.dart';
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
                padding: EdgeInsets.all(15),
                width: size.width * 0.25,
                height: size.height * 0.85,
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Valor total: R\$100,00',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'Historico De Registro',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(child: HitoricoRegistroCard())
                ]),
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
