import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RegistroCapPorFuncaoButton extends StatefulWidget {
  RegistroCapPorFuncaoButton({
    super.key,
    required this.title,
  });
  final String title;
  @override
  State<RegistroCapPorFuncaoButton> createState() =>
      _RegistroCapPorFuncaoButtonState();
}

class _RegistroCapPorFuncaoButtonState
    extends State<RegistroCapPorFuncaoButton> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
 
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade900),
        // height: size.width * 0.03,
        //   width: size.width * 0.09,
        height: 50,
        width: 150,
        child: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
