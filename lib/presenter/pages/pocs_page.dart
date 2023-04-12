import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mango_staff/presenter/components/geral/app_bar.dart';

import '../components/series/capitulo_feito_card.dart';
import '../components/series/historico_capitulos_card.dart';
import '../components/series/registro_cap_card.dart';
import '../components/series/series_search_bar_component.dart';

class PocsPage extends StatefulWidget {
  const PocsPage({super.key});

  @override
  State<PocsPage> createState() => _PocsPageState();
}

class _PocsPageState extends State<PocsPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBarComponent(),
      body: Container(
        color: Colors.red,
        height: double.infinity,
        width: double.infinity, alignment: Alignment.center,

        padding: EdgeInsets.all(100),
        //margin: EdgeInsets.all(200),
        //child: SeriesSearchBarComponent(constraints: size),
        // child: RegistroCapCard(),
      ),
    );
  }
}
