import 'package:flutter/material.dart';
import 'package:mango_staff/src/presenter/components/series/cap_done_card.dart';

class HistoryCapDoneCard extends StatefulWidget {
  const HistoryCapDoneCard({
    super.key,
    required this.constraints,
  });
  final BoxConstraints constraints;
  @override
  State<HistoryCapDoneCard> createState() => _HistoryCapDoneCardState();
}

class _HistoryCapDoneCardState extends State<HistoryCapDoneCard> {
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
                      overflow: TextOverflow.visible),
                ),
              ),
              Text(
                'Historico De Registro',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: constraints.maxWidth * 0.05,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.visible),
              ),

              // Container(
              //     alignment: Alignment.centerLeft,
              //     // color: Colors.red,
              //     width: constraints.maxWidth,
              //     height: constraints.maxHeight * 0.05,
              //     child: FittedBox(
              //       child: Text(
              //         '\$100,00 - Valor Total',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: constraints.maxWidth * 0.05,
              //             fontWeight: FontWeight.bold,
              //             overflow: TextOverflow.visible),
              //       ),
              //     )),
              // Container(
              //     // color: Colors.green,
              //     width: constraints.maxWidth,
              //     height: constraints.maxHeight * 0.05,
              //     child: FittedBox(
              //       child: Text(
              //         'Historico De Registro',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: constraints.maxWidth * 0.05,
              //             fontWeight: FontWeight.bold,
              //             overflow: TextOverflow.visible),
              //       ),
              //     )),
              // Container(
              //   color: Colors.red,
              //   width: constraints.maxWidth,
              //   height: constraints.maxHeight * 0.1,
              //   child: FittedBox(
              //     child: Column(children: [
              //       Align(
              //         alignment: Alignment.centerLeft,
              //         child: Text(
              //           '\$100,00 - Valor Total',
              //           style: TextStyle(
              //               color: Colors.white,
              //               fontSize: constraints.maxWidth * 0.05,
              //               fontWeight: FontWeight.bold,
              //               overflow: TextOverflow.visible),
              //         ),
              //       ),
              //       Text(
              //         'Historico De Registro',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: constraints.maxWidth * 0.05,
              //             fontWeight: FontWeight.bold,
              //             overflow: TextOverflow.visible),
              //       ),
              //     ]),
              //   ),
              // ),
              SizedBox(
                height: constraints.maxHeight * 0.02,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    height: size.width * 0.008,
                  ),
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return CapDoneCard(
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
