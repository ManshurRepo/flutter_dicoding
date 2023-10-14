/*import 'package:flutter/widgets.dart';

Contoh class stateles widget


class Heading extends StatelessWidget {
  final String text;
  const Heading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
} */

// contoh stateful widget

import 'package:flutter/material.dart';

/*class ContohStateful extends StatefulWidget {
  final String parameterWidget; //ini parameter widget
  const ContohStateful({Key? key, required this.parameterWidget})
      : super(key: key);

  @override
  _ContohStatefulState createState() => _ContohStatefulState();
}

class _ContohStatefulState extends State<ContohStateful> {
  String _dataState; //ini state dari Widget ContohStateful

  @override
  Widget build(BuildContext context) {
    //isi sebuah widget
  }
} */
//Membuat stateful sederhana

class BiggerText extends StatefulWidget {
  final String text;

  const BiggerText({Key? key, required this.text}) : super(key: key);

  @override
  _BiggerTextState createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        ElevatedButton(
          child: const Text("Perbesar"),
          onPressed: () {
            setState(() {
              _textSize = 32.0;
            });
          },
        )
      ],
    );
  }
}
