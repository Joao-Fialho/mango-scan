import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HitoricoRegistroCard extends StatefulWidget {
  const HitoricoRegistroCard({super.key});

  @override
  State<HitoricoRegistroCard> createState() => HitoricoRegistroCardState();
}

class HitoricoRegistroCardState extends State<HitoricoRegistroCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Cap. 1'),
        Text('Titulo'),
        Text('Limpeza'),
        Text('1.50'),
        Text('12/07/2004')
      ],
    );
  }
}
