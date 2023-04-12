import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'capitulo_feito_card.dart';

class HistoricoCapitulosCard extends StatefulWidget {
  const HistoricoCapitulosCard({
    super.key,
    required this.constraints,
  });
  final BoxConstraints constraints;
  @override
  State<HistoricoCapitulosCard> createState() => _HistoricoCapitulosCardState();
}

class _HistoricoCapitulosCardState extends State<HistoricoCapitulosCard> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: widget.constraints.maxWidth,
      height: widget.constraints.maxHeight * .9,
      padding: EdgeInsets.all(size.width * 0.01),
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(size.width * 0.01),
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '\$100,00 - Valor Total',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: constraints.maxWidth * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Historico De Registro',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: constraints.maxWidth * 0.05,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: constraints.maxHeight * 0.85,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    height: size.height * 0.01,
                  ),
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return CapituloFeitoCard(
                      constraints: constraints,
                    );
                  },
                ),
              ),
            ]);
      }),
    );
  }
}
