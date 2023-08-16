import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'Calculadora',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black12,
          //Titulo
          appBar: AppBar(
            title: const Text(
              'Calculadora',
              style: TextStyle(letterSpacing: 1.0, fontSize: 25.0),
            ),
            centerTitle: true,
            backgroundColor: Colors.black12,
          ),
          body: LogicaCalculadora(),
        ),
      ),
    );
  }
}

class LogicaCalculadora extends StatefulWidget {
  const LogicaCalculadora({super.key});

  @override
  State<LogicaCalculadora> createState() => _LogicaCalculadoraState();
}

class _LogicaCalculadoraState extends State<LogicaCalculadora> {
  dynamic visor = 'Visor';

  void mostrarApagarNoVisor() {
    setState(() {
      visor = 'Apagar';
    });
  }
  void mostrarDelNoVisor() {
    setState(() {
      visor = 'Deletar';
    });
  }

  void mostrarPorcentagemNoVisor() {
    setState(() {
      visor = '%';
    });
  }

  void mostrarDivisaoNoVisor() {
    setState(() {
      visor = 'Divisão';
    });
  }

  void mostrarSeteNoVisor() {
    setState(() {
      visor = 7;
    });
  }

  void mostrarOitoNoVisor() {
    setState(() {
      visor = 8;
    });
  }

  void mostrarNoveNoVisor() {
    setState(() {
      visor = 9;
    });
  }

  void mostrarMultiplicacaoNoVisor() {
    setState(() {
      visor = 'Multiplicação';
    });
  }

  void mostrarQuatroNoVisor() {
    setState(() {
      visor = 4;
    });
  }

  void mostrarCincoNoVisor() {
    setState(() {
      visor = 5;
    });
  }

  void mostrarSeisNoVisor() {
    setState(() {
      visor = 6;
    });
  }

  void mostrarSomaNoVisor() {
    setState(() {
      visor = '+';
    });
  }

  void mostrarUmNoVisor() {
    setState(() {
      visor = 1;
    });
  }

  void mostrarDoisNoVisor() {
    setState(() {
      visor = 2;
    });
  }

  void mostrarTresNoVisor() {
    setState(() {
      visor = 3;
    });
  }

  void mostrarSubtracaoNoVisor() {
    setState(() {
      visor = 'Subtração';
    });
  }

  void mostrarZeroNoVisor() {
    setState(() {
      visor = 0;
    });
  }

  void mostrarPontoNoVisor() {
    setState(() {
      visor = '.';
    });
  }

  void mostrarResultadoNoVisor() {
    setState(() {
      visor = '=';
    });
  }



  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        //visor
        Container(
          color: Colors.white,
          margin: EdgeInsets.all(15.0),
          width: 400.0,
          height: 120.0,
          alignment: Alignment.center,
          child: Text('$visor',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 50.0)),
        ),
        //botões
        Container(
          //margin: EdgeInsets.all(15.0),
          child: Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black, // Background color
                                onPrimary: Colors.blue, // Text Color (Foreground color)
                              ),
                              onPressed: () {mostrarApagarNoVisor();},
                              child:
                              Text('C', style: TextStyle(fontSize: 28.0)),
                            )),
                        Expanded(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black, // Background color
                                  onPrimary: Colors.blue, // Text Color (Foreground color)
                                ),
                                onPressed: () {mostrarDelNoVisor();},
                                child: Text('DEL',
                                    style: TextStyle(fontSize: 28.0)))),
                        Expanded(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black, // Background color
                                  onPrimary: Colors.blue, // Text Color (Foreground color)
                                ),
                                onPressed: () {mostrarPorcentagemNoVisor();},
                                child: Text('%',
                                    style: TextStyle(fontSize: 28.0)))),
                        Expanded(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black, // Background color
                                  onPrimary: Colors.blue, // Text Color (Foreground color)
                                ),
                                onPressed: () { mostrarDivisaoNoVisor();},
                                child: Text('/',
                                    style: TextStyle(fontSize: 28.0)))),
                      ]),
                ),
                Expanded(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            child: ElevatedButton(
                              style: const ButtonStyle(
                                backgroundColor:
                                MaterialStatePropertyAll<Color>(
                                    Colors.black),
                              ),
                              onPressed: () { mostrarSeteNoVisor();},
                              child:
                              Text('7', style: TextStyle(fontSize: 28.0)),
                            )),
                        Expanded(
                            child: ElevatedButton(
                                style: const ButtonStyle(
                                  backgroundColor:
                                  MaterialStatePropertyAll<Color>(
                                      Colors.black),
                                ),
                                onPressed: () {mostrarOitoNoVisor();},
                                child: Text('8',
                                    style: TextStyle(fontSize: 28.0)))),
                        Expanded(
                            child: ElevatedButton(
                                style: const ButtonStyle(
                                  backgroundColor:
                                  MaterialStatePropertyAll<Color>(
                                      Colors.black),
                                ),
                                onPressed: () {mostrarNoveNoVisor();},
                                child: Text('9',
                                    style: TextStyle(fontSize: 28.0)))),
                        Expanded(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black, // Background color
                                  onPrimary: Colors.blue, // Text Color (Foreground color)
                                ),
                                onPressed: () {mostrarMultiplicacaoNoVisor();},
                                child: Text('*',
                                    style: TextStyle(fontSize: 28.0)))),
                      ]),
                ),
                Expanded(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            child: ElevatedButton(
                              style: const ButtonStyle(
                                backgroundColor:
                                MaterialStatePropertyAll<Color>(
                                    Colors.black),
                              ),
                              onPressed: () {mostrarQuatroNoVisor();},
                              child:
                              Text('4', style: TextStyle(fontSize: 28.0)),
                            )),
                        Expanded(
                            child: ElevatedButton(
                                style: const ButtonStyle(
                                  backgroundColor:
                                  MaterialStatePropertyAll<Color>(
                                      Colors.black),
                                ),
                                onPressed: () {mostrarCincoNoVisor();},
                                child: Text('5',
                                    style: TextStyle(fontSize: 28.0)))),
                        Expanded(
                            child: ElevatedButton(
                                style: const ButtonStyle(
                                  backgroundColor:
                                  MaterialStatePropertyAll<Color>(
                                      Colors.black),
                                ),
                                onPressed: () {mostrarSeisNoVisor();},
                                child: Text('6',
                                    style: TextStyle(fontSize: 28.0)))),
                        Expanded(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black, // Background color
                                  onPrimary: Colors.blue, // Text Color (Foreground color)
                                ),
                                onPressed: () {mostrarSomaNoVisor();},
                                child: Text('+',
                                    style: TextStyle(fontSize: 28.0)))),
                      ]),
                ),
                Expanded(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            child: ElevatedButton(
                              style: const ButtonStyle(
                                backgroundColor:
                                MaterialStatePropertyAll<Color>(
                                    Colors.black),
                              ),
                              onPressed: () {mostrarUmNoVisor();},
                              child:
                              Text('1', style: TextStyle(fontSize: 28.0)),
                            )),
                        Expanded(
                            child: ElevatedButton(
                                style: const ButtonStyle(
                                  backgroundColor:
                                  MaterialStatePropertyAll<Color>(
                                      Colors.black),
                                ),
                                onPressed: () {mostrarDoisNoVisor();},
                                child: Text('2',
                                    style: TextStyle(fontSize: 28.0)))),
                        Expanded(
                            child: ElevatedButton(
                                style: const ButtonStyle(
                                  backgroundColor:
                                  MaterialStatePropertyAll<Color>(
                                      Colors.black),
                                ),
                                onPressed: () {mostrarTresNoVisor();},
                                child: Text('3',
                                    style: TextStyle(fontSize: 28.0)))),
                        Expanded(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black, // Background color
                                  onPrimary: Colors.blue, // Text Color (Foreground color)
                                ),
                                onPressed: () {mostrarSubtracaoNoVisor();},
                                child: Text('-',
                                    style: TextStyle(fontSize: 28.0)))),
                      ]),
                ),
                Expanded(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            child: ElevatedButton(
                              style: const ButtonStyle(
                                backgroundColor:
                                MaterialStatePropertyAll<Color>(
                                    Colors.black),
                              ),
                              onPressed: () {mostrarZeroNoVisor();},
                              child:
                              Text('0', style: TextStyle(fontSize: 28.0)),
                            )),
                        Expanded(
                            flex: 2,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black, // Background color
                                  onPrimary: Colors.blue, // Text Color (Foreground color)
                                ),
                                onPressed: () {mostrarPontoNoVisor();},
                                child: Text('.',
                                    style: TextStyle(fontSize: 28.0)))),
                        Expanded(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black, // Background color
                                  onPrimary: Colors.blue, // Text Color (Foreground color)
                                ),
                                onPressed: () {mostrarResultadoNoVisor();},
                                child: Text('=',
                                    style: TextStyle(fontSize: 28.0)))),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

