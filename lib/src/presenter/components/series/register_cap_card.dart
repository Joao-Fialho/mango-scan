import 'package:flutter/material.dart';
import 'package:mango_staff/src/presenter/components/series/function_register_cap_button.dart';

class RegisterCapCard extends StatefulWidget {
  final String capaImage;
  final String tituloCap;
  const RegisterCapCard({
    super.key,
    required this.capaImage,
    required this.tituloCap,
  });

  @override
  State<RegisterCapCard> createState() => _RegisterCapCardState();
}

class _RegisterCapCardState extends State<RegisterCapCard> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return AspectRatio(
      aspectRatio: 15 / 8,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade800,
          borderRadius: BorderRadius.circular(size.width * 0.007),
        ),
        padding: EdgeInsets.all(size.width * 0.008),
        height: size.width * 0.15,
        child: LayoutBuilder(builder: (context, constraints) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AspectRatio(
                aspectRatio: 3 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.circular(size.width * 0.005)),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(widget.capaImage),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: constraints.maxWidth * 0.05,
              ),
              Expanded(
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.tituloCap,
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
                      SizedBox(
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
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    constraints.maxWidth * 0.02),
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.55,
                        width: constraints.maxWidth * 0.6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FunctionRegisterCapButton(
                                    title: 'Tradutor',
                                    constraints: constraints),
                                // SizedBox(height: size.width * .01),
                                FunctionRegisterCapButton(
                                    title: 'Edicao', constraints: constraints),
                                // SizedBox(height: size.width * .01),
                                FunctionRegisterCapButton(
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
              ),
            ],
          );
        }),
      ),
    );
  }
}
