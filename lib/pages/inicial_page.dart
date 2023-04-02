import 'package:flutter/material.dart';
import 'package:mango_staff/components/geral/app_bar.dart';

import '../components/geral/bottom_navigation_bar_custom.dart';

class InicialPage extends StatefulWidget {
  const InicialPage({super.key});

  @override
  State<InicialPage> createState() => _InicialPageState();
}

class _InicialPageState extends State<InicialPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBarComponent(),
        body: Container(
          height: size.height * .85,
          alignment: Alignment.center,
          margin: EdgeInsets.only(
            top: size.width * 0.025,
            bottom: size.width * 0.025,
          ),
          child: FittedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: SizedBox(
                    width: size.width * 0.75,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Olá Usuário!\nComo está seu dia hoje?',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width * 0.037),
                            ),
                            Text(
                              'Pronto para começar\nsuas atividades diárias?',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: size.width * 0.025),
                            ),
                            Text(
                              'Caso voce seja novo no uso da nossa plataforma, basta\napertar em "Guia" para ser direcionado para o nosso manual de uso',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width * 0.015),
                            ),
                          ],
                        ),
                        Container(
                          height: size.width * 0.21,
                          width: size.width * 0.21,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(size.width * 0.25),
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('neon_perfil.jpg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                          Size(size.width * 0.17, size.width * 0.036)),
                      maximumSize: MaterialStateProperty.all(
                          Size(size.width * 0.17, size.width * 0.036)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(size.width * .012),
                          side: const BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => const Color(0xff7289da))),
                  child: Text(
                    'Login com o Discord',
                    style: TextStyle(
                      fontSize: size.width * 0.013,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavigationBarCustom());
  }
}
