import 'package:flutter/material.dart';

class SeriesSearchBarComponent extends StatefulWidget {
  const SeriesSearchBarComponent({
    super.key,
    required this.constraints,
    required this.onChanged,
  });
  final BoxConstraints constraints;
  final void Function(String)? onChanged;
  @override
  State<SeriesSearchBarComponent> createState() =>
      _SeriesSearchBarComponentState();
}

class _SeriesSearchBarComponentState extends State<SeriesSearchBarComponent> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 10,
      child: Container(
        width: widget.constraints.maxWidth,
        height: widget.constraints.maxHeight * 0.2,
        child: TextFormField(
          onChanged: widget.onChanged,
          cursorColor: Colors.white,
          textInputAction: TextInputAction.search,
          style: TextStyle(
            fontSize: widget.constraints.maxWidth * .04,
            color: Colors.white,
            overflow: TextOverflow.ellipsis,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: widget.constraints.maxHeight * 0.01,
                vertical: widget.constraints.maxHeight * 0.01),
            labelText: 'Pesquisar',
            labelStyle: TextStyle(
              fontSize: widget.constraints.maxWidth * .037,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(widget.constraints.maxWidth * 0.025),
                borderSide: const BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(widget.constraints.maxWidth * 0.025),
                borderSide: const BorderSide(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
