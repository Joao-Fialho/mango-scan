import 'package:flutter/material.dart';
import 'package:mango_staff/components/series/resgistro_cap_por_funcao_button.dart';

class RegistroCapCard extends StatefulWidget {
  const RegistroCapCard({super.key});

  @override
  State<RegistroCapCard> createState() => _RegistroCapCardState();
}

class _RegistroCapCardState extends State<RegistroCapCard> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(size.width * 0.01),
      height: size.height * 0.4,
      child: LayoutBuilder(builder: (context, constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AspectRatio(
              aspectRatio: 3 / 4,
              child: Image.network(
                  'https://cdn.discordapp.com/attachments/1089686820025016371/1090682171343241227/Como-Proteger-Al-Hermano-Mayor-De-La-Protagonista-T2-.jpg'),
              // child: Container(
              //   color: Colors.white,

              // ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: constraints.maxWidth * 0.5,
                    height: constraints.maxHeight * 0.21,
                    child: Text(
                      'Como Fazer meu Marido Ficar do Meu Lado',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: constraints.maxWidth * .04,
                        overflow: TextOverflow.ellipsis,
                      ),
                      textAlign: TextAlign.justify,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    width: constraints.maxWidth * 0.28,
                    height: constraints.maxHeight * 0.18,
                    child: TextFormField(
                      cursorColor: Colors.white,
                      textInputAction: TextInputAction.search,
                      style: TextStyle(
                        fontSize: constraints.maxWidth * .03,
                        color: Colors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Nº Cap.',
                        contentPadding:
                            EdgeInsets.all(constraints.maxHeight * 0.05),
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: constraints.maxWidth * .03,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                constraints.maxWidth * 0.02),
                            borderSide: const BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                constraints.maxWidth * 0.02),
                            borderSide: const BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),
                  Container(
                    height: constraints.maxHeight * 0.55,
                    width: constraints.maxWidth * 0.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RegistroCapPorFuncaoButton(
                                title: 'Tradutor', constraints: constraints),
                            // SizedBox(height: size.width * .01),
                            RegistroCapPorFuncaoButton(
                                title: 'Edicao', constraints: constraints),
                            // SizedBox(height: size.width * .01),
                            RegistroCapPorFuncaoButton(
                                title: 'Limpeza', constraints: constraints),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  constraints.maxWidth * 0.02),
                              color: Colors.green,
                            ),
                            height: constraints.maxHeight * 0.17,
                            width: constraints.maxWidth * 0.18,
                            child: Text(
                              'Enviar',
                              style: TextStyle(
                                fontSize: constraints.maxWidth * .03,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
