import 'package:flutter/material.dart';
import 'package:mango_staff/core/widgets/mango_app_bar.dart';

import '../../../core/app_colors.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors().primaryColor,
        appBar: MangoAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(250),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Olá Usuário PROFILE RPB!\nComo está seu dia hoje?',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 50),
                      ),
                      Text(
                        'Pronto para começar\nsuas atividades diárias?',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 25),
                      ),
                      Text(
                        'Caso voce seja novo no uso da nossa plataforma, basta\napertar em "Guia" para ser direcionado para o nosso manual de uso',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                  Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(500),
                      image: DecorationImage(
                        image: AssetImage('neon_perfil.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
              // TextButton(
              //   onPressed: () {},
              //   style: ButtonStyle(
              //       padding: MaterialStateProperty.all(EdgeInsets.all(18)),
              //       shape: MaterialStateProperty.all(
              //         RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(13),
              //           side: BorderSide(color: Colors.white, width: 1.5),
              //         ),
              //       ),
              //       backgroundColor: MaterialStateColor.resolveWith(
              //           (states) => Colors.blue.shade300)),
              //   child: Text(
              //     'Login com o Discord',
              //     style: TextStyle(
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              // Divider(
              //   color: Colors.white,
              //   height: 15,
              // ),
              // Text('Encontrou algum BUG ou erro no site? Fale com o Yuta'),
              // Container(
              //   child: Text(
              //       'Desenvolvido por Yuta - Site em desenvolvimento, poderá ocorrer alguns erros ou bugs'),
              // )
            ],
          ),
        ));
  }
}
