import 'package:flutter/material.dart';

class InputMeusDados extends StatefulWidget {
  final label;
  final placeHolder;
  final controller;
  final obscure;

  const InputMeusDados(
      {required this.label,
      required this.controller,
      required this.placeHolder,
      required this.obscure,
      super.key});

  @override
  State<InputMeusDados> createState() => _InputMeusDadosState();
}

class _InputMeusDadosState extends State<InputMeusDados> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(widget.label),
        SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.lightBlue,
              ),
              borderRadius: BorderRadius.circular(5)),
          child: TextField(
            style: TextStyle(height: 2),
            obscureText: widget.obscure,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.all(5),
              hintText: widget.placeHolder,
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
