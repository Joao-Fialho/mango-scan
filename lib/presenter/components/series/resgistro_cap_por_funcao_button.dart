import 'package:flutter/material.dart';

class RegistroCapPorFuncaoButton extends StatefulWidget {
  RegistroCapPorFuncaoButton({
    super.key,
    required this.title,
    this.onTap,
    required this.constraints,
    // this.isSelected,
  });

  final String title;
  final void Function()? onTap;
  final BoxConstraints constraints;
  bool isSelected = false;
  @override
  State<RegistroCapPorFuncaoButton> createState() =>
      _RegistroCapPorFuncaoButtonState();
}

class _RegistroCapPorFuncaoButtonState
    extends State<RegistroCapPorFuncaoButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isSelected = !widget.isSelected;
        });
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(widget.constraints.maxWidth * 0.02),
            color: widget.isSelected ? Colors.green : Colors.grey.shade900),
        height: widget.constraints.maxHeight * 0.17,
        width: widget.constraints.maxWidth * 0.28,
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: widget.constraints.maxWidth * .03,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
