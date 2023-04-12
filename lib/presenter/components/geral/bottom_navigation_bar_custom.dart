import 'package:flutter/material.dart';

class BottomNavigationBarCustom extends StatefulWidget {
  const BottomNavigationBarCustom({super.key});

  @override
  State<BottomNavigationBarCustom> createState() =>
      BottomNavigationBarCustomState();
}

class BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.15,
      width: size.width,
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.007,
                  width: size.width * 0.92,
                  color: Colors.white,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(
                  'Encontrou Algum BUG ou erro no site? Fale com Yuta',
                  style: TextStyle(
                      color: Colors.white, fontSize: size.width * 0.015),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              color: Colors.brown.shade300,
              alignment: Alignment.center,
              width: size.width,
              height: size.width * 0.033,
              child: Text(
                'Desenvolvido por Yuta - Site em desenvolvimento, poderá ocorrer alguns erros ou bugs/',
                style: TextStyle(
                    color: Colors.white, fontSize: size.width * 0.015),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
