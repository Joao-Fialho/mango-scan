import 'package:flutter/material.dart';
import 'package:mango_staff/core/widgets/mango_app_bar.dart';

import '../components/series/register_cap_card.dart';

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
      appBar: MangoAppBar(),
      body: Container(
        color: Colors.red,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        child: RegisterCapCard(
            tituloCap: 'aaaaaaaa',
            capaImage: 'https://m.media-amazon.com/images/I/71EtXb3PHRL.jpg'),
      ),
    );
  }
}
