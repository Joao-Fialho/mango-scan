import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MangoAppBarButton extends StatefulWidget {
  final String title;
  final String rota;
  const MangoAppBarButton({
    super.key,
    required this.title,
    required this.rota,
  });
  @override
  State<MangoAppBarButton> createState() => _MangoAppBarButtonState();
}

class _MangoAppBarButtonState extends State<MangoAppBarButton> {
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
