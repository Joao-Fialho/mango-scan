import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'mango_app_bar_button.dart';

class MangoAppBar extends AppBar {
  MangoAppBar({super.key});

  @override
  State<MangoAppBar> createState() => _MangoAppBarCompo();
}

class _MangoAppBarCompo extends State<MangoAppBar> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return AppBar(
      leadingWidth: size.width * .2,
      //backgroundColor: Colors.grey.shade800,
      backgroundColor: const Color(0xff663399),
// leading:
      //    Container(
      //   padding: const EdgeInsets.only(left: 10),
      //   child: Align(
      //     alignment: Alignment.centerLeft,
      //     child: FittedBox(
      //       child: Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.all(8),
      //             child: Container(
      //               height: 70,
      //               width: 70,
      //               decoration: BoxDecoration(
      //                 color: Colors.white,
      //                 borderRadius: BorderRadius.circular(100),
      //                 image: const DecorationImage(
      //                   image: AssetImage('neon_perfil.jpg'),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           Image.asset('logo.png'),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      title: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            MangoAppBarButton(
              rota: '/',
              title: 'Pagina Inicial',
            ),
            // ButtonsAppBar(
            //   rota: '/user',
            //   title: 'Usuário',
            // ),
            MangoAppBarButton(
              rota: '/pocs',
              title: 'Pocs',
            ),
            // ButtonsAppBar(
            //   rota: '/',
            //   title: 'Funcoes',
            // ),
            // ButtonsAppBar(
            //   rota: '/',
            //   title: 'Guia',
            // ),
            MangoAppBarButton(
              rota: '/series',
              title: 'Series',
            ),
          ],
        ),
      ),
      actions: [
        Container(
          padding: const EdgeInsets.only(left: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: FittedBox(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                          image: AssetImage('neon_perfil.jpg'),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 35),
                    child: Text(
                      'Sakuta',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Container(
        //   margin: const EdgeInsets.only(right: 11),
        //   alignment: Alignment.center,
        //   width: size.width * .15,
        //   height: size.width * .015,
        //   child: TextFormField(
        //     cursorColor: Colors.white,
        //     textInputAction: TextInputAction.search,
        //     style: TextStyle(
        //       fontSize: size.width * .009,
        //       color: Colors.white,
        //       overflow: TextOverflow.ellipsis,
        //     ),
        //     decoration: InputDecoration(
        //       labelText: 'Pesquisar',
        //       isDense: true,
        //       contentPadding: const EdgeInsets.only(
        //           left: 11, bottom: 11, top: 11, right: 5),
        //       labelStyle: const TextStyle(
        //         color: Colors.white,
        //         fontWeight: FontWeight.w500,
        //       ),
        //       focusedBorder: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(10),
        //           borderSide: const BorderSide(color: Colors.white)),
        //       enabledBorder: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(10),
        //           borderSide: const BorderSide(color: Colors.white)),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
