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

  void mostrarNoVisor(String funcao) {
    setState(() {
      visor = funcao;
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
                              onPressed: () {mostrarNoVisor('Apagar');},
                              child:
                              Text('C', style: TextStyle(fontSize: 28.0)),
                            )),
                        Expanded(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black, // Background color
                                  onPrimary: Colors.blue, // Text Color (Foreground color)
                                ),
                                onPressed: () {mostrarNoVisor('DEL');},
                                child: Text('DEL',
                                    style: TextStyle(fontSize: 28.0)))),
                        Expanded(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black, // Background color
                                  onPrimary: Colors.blue, // Text Color (Foreground color)
                                ),
                                onPressed: () {mostrarNoVisor('%');},
                                child: Text('%',
                                    style: TextStyle(fontSize: 28.0)))),
                        Expanded(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black, // Background color
                                  onPrimary: Colors.blue, // Text Color (Foreground color)
                                ),
                                onPressed: () { mostrarNoVisor('/');},
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
                              onPressed: () { mostrarNoVisor('7');},
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
                                onPressed: () {mostrarNoVisor('8');},
                                child: Text('8',
                                    style: TextStyle(fontSize: 28.0)))),
                        Expanded(
                            child: ElevatedButton(
                                style: const ButtonStyle(
                                  backgroundColor:
                                  MaterialStatePropertyAll<Color>(
                                      Colors.black),
                                ),
                                onPressed: () {mostrarNoVisor('9');},
                                child: Text('9',
                                    style: TextStyle(fontSize: 28.0)))),
                        Expanded(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black, // Background color
                                  onPrimary: Colors.blue, // Text Color (Foreground color)
                                ),
                                onPressed: () {mostrarNoVisor('*');},
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
                              onPressed: () {mostrarNoVisor('4');},
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
                                onPressed: () {mostrarNoVisor('5');},
                                child: Text('5',
                                    style: TextStyle(fontSize: 28.0)))),
                        Expanded(
                            child: ElevatedButton(
                                style: const ButtonStyle(
                                  backgroundColor:
                                  MaterialStatePropertyAll<Color>(
                                      Colors.black),
                                ),
                                onPressed: () {mostrarNoVisor('6');},
                                child: Text('6',
                                    style: TextStyle(fontSize: 28.0)))),
                        Expanded(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black, // Background color
                                  onPrimary: Colors.blue, // Text Color (Foreground color)
                                ),
                                onPressed: () {mostrarNoVisor('+');},
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
                              onPressed: () {mostrarNoVisor('1');},
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
                                onPressed: () {mostrarNoVisor('2');},
                                child: Text('2',
                                    style: TextStyle(fontSize: 28.0)))),
                        Expanded(
                            child: ElevatedButton(
                                style: const ButtonStyle(
                                  backgroundColor:
                                  MaterialStatePropertyAll<Color>(
                                      Colors.black),
                                ),
                                onPressed: () {mostrarNoVisor('3');},
                                child: Text('3',
                                    style: TextStyle(fontSize: 28.0)))),
                        Expanded(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black, // Background color
                                  onPrimary: Colors.blue, // Text Color (Foreground color)
                                ),
                                onPressed: () {mostrarNoVisor('-');},
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
                              onPressed: () {mostrarNoVisor('0');},
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
                                onPressed: () {mostrarNoVisor('.');},
                                child: Text('.',
                                    style: TextStyle(fontSize: 28.0)))),
                        Expanded(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black, // Background color
                                  onPrimary: Colors.blue, // Text Color (Foreground color)
                                ),
                                onPressed: () {mostrarNoVisor('=');},
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

