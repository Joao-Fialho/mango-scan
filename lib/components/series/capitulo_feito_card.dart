import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CapituloFeitoCard extends StatefulWidget {
  const CapituloFeitoCard({super.key, required this.constraints});
  final BoxConstraints constraints;
  @override
  State<CapituloFeitoCard> createState() => HitoricoRegistroCardState();
}

class HitoricoRegistroCardState extends State<CapituloFeitoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.constraints.maxHeight * 0.1,
      decoration: BoxDecoration(
          color: Colors.grey.shade900, borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(10),
      child: LayoutBuilder(builder: (context, constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Cap. 1',
              style: TextStyle(
                fontSize: constraints.maxWidth * .04,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              width: constraints.maxWidth * 0.3,
              child: Text(
                'Como Fazer meu Marido Ficar do Meu Lado',
                style: TextStyle(
                  fontSize: constraints.maxWidth * .04,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.ellipsis,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              'Limpeza',
              style: TextStyle(
                fontSize: constraints.maxWidth * .04,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '1.50',
              style: TextStyle(
                fontSize: constraints.maxWidth * .04,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '12/07',
              style: TextStyle(
                fontSize: constraints.maxWidth * .04,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        );
      }),
    );
  }
}
