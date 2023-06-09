import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';

class CapDoneCard extends StatefulWidget {
  final BoxConstraints constraints;
  const CapDoneCard({
    super.key,
    required this.constraints,
  });
  @override
  State<CapDoneCard> createState() => HitoricoRegistroCardState();
}

class HitoricoRegistroCardState extends State<CapDoneCard> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 6,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors().primaryColor,
            borderRadius:
                BorderRadius.circular(widget.constraints.maxWidth * 0.025)),
        padding: EdgeInsets.all(widget.constraints.maxWidth * 0.02),
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
              FittedBox(
                child: Container(
                  alignment: Alignment.center,
                  width: constraints.maxWidth * 0.32,
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
      ),
    );
  }
}
