import 'package:flutter/material.dart';

class SeriesSearchBarComponent extends StatefulWidget {
  const SeriesSearchBarComponent({
    super.key,
    required this.constraints,
    // required this.height,
    // required this.width,
  });
  final BoxConstraints constraints;
  // final double width;
  // final double height;
  @override
  State<SeriesSearchBarComponent> createState() =>
      _SeriesSearchBarComponentState();
}

class _SeriesSearchBarComponentState extends State<SeriesSearchBarComponent> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white,
      textInputAction: TextInputAction.search,
      style: TextStyle(
        fontSize: widget.constraints.maxWidth * .037,
        color: Colors.white,
        overflow: TextOverflow.ellipsis,
      ),
      decoration: InputDecoration(
        labelText: 'Pesquisar',
        labelStyle: TextStyle(
          fontSize: widget.constraints.maxWidth * .037,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.constraints.maxWidth * 0.017),
            borderSide: const BorderSide(color: Colors.white)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.constraints.maxWidth * 0.017),
            borderSide: const BorderSide(color: Colors.white)),
      ),
    );
  }
}
