import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final estText = new TextStyle(fontSize: 30);
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('One piece'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Numero de clicks',
              style: estText,
            ),
            Text(
              '$contador',
              style: estText,
            )
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  //crear botones
  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 40.0),
        //cero
        FloatingActionButton(
          onPressed: _reset,
          child: Icon(Icons.exposure_zero),
        ),
        //restar
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: _sustraer,
          child: Icon(Icons.remove),
        ),
        //sumar
        SizedBox(width: 20.0),
        FloatingActionButton(
          onPressed: _sumar,
          child: Icon(Icons.add),
        ),
      ],
    );
  }

  //funciones de botones
  void _sumar() {
    setState(() => contador++);
  }

  void _sustraer() {
    setState(() {
      contador--;
    });
  }

  void _reset() {
    setState(() => contador = 0);
  }
}
