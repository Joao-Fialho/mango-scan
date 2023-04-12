import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ButtonsAppBar extends StatefulWidget {
  final String title;
  final String rota;
  const ButtonsAppBar({
    super.key,
    required this.title,
    required this.rota,
  });
  @override
  State<ButtonsAppBar> createState() => _ButtonsAppBarState();
}

class _ButtonsAppBarState extends State<ButtonsAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: TextButton(
          onPressed: () {
            Modular.to.navigate(widget.rota);
          },
          child: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ));
  }
}
