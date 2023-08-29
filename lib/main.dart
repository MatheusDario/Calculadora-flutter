import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() => runApp(const MyApp());

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
  String visor = '0';


  void mostrarNoVisor(String funcao) {
    setState(() {
      if(visor == '0') {
        visor = funcao;
      }
      else {
        visor += funcao;
      }
    });
  }

  void resetar() {
    setState(() {
      visor = '0';
    });
  }

  void realizaCalculo() {
    visor = visor.replaceAll('÷', '/');

    Parser p = Parser();
    Expression expression = p.parse(visor);
    ContextModel cm = new ContextModel();
    double resolucaoDaExpressao = expression.evaluate(EvaluationType.REAL, cm);

    setState(() {
      visor = resolucaoDaExpressao.toString();
    });
  }

  Expanded criarBtnMostrarResultado({required String btn}) {
    return  Expanded(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.black, // Background color
            onPrimary: Colors.blue, // Text Color (Foreground color)
          ),
          onPressed: () {realizaCalculo();},
          child:
          Text(btn, style: TextStyle(fontSize: 28.0),),
        ));
  }

  Expanded criarBtnsApagar({required String btn}) {
    return  Expanded(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.black, // Background color
            onPrimary: Colors.blue, // Text Color (Foreground color)
          ),
          onPressed: () {resetar();},
          child:
          Text(btn, style: TextStyle(fontSize: 28.0),),
        ));
  }


  Expanded criarBtnsCalcular({required String funcao, required String btn}) {
    return  Expanded(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.black, // Background color
            onPrimary: Colors.blue, // Text Color (Foreground color)
          ),
          onPressed: () {mostrarNoVisor(funcao);},
          child:
          Text(btn, style: TextStyle(fontSize: 28.0),),
        ));
  }

  Expanded criarBtnsNums({required String funcao, required String numBtn}) {
    return  Expanded(
        child: ElevatedButton(
          style: const ButtonStyle(
            backgroundColor:
            MaterialStatePropertyAll<Color>(
                Colors.black),
          ),
          onPressed: () { mostrarNoVisor(funcao);},
          child:
          Text(numBtn, style: TextStyle(fontSize: 28.0)),
        ));
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
                        criarBtnsApagar(btn: 'C',),
                        criarBtnsApagar(btn: 'DEL'),
                        criarBtnsCalcular(funcao: '%', btn: '%'),
                        criarBtnsCalcular(funcao: '/', btn: '/'),
                      ]),
                ),
                Expanded(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        criarBtnsNums(funcao: '7', numBtn: '7'),
                        criarBtnsNums(funcao: '8', numBtn: '8'),
                        criarBtnsNums(funcao: '9', numBtn: '9'),
                        criarBtnsCalcular(funcao: '*', btn: '*'),
                      ]),
                ),
                Expanded(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        criarBtnsNums(funcao: '4', numBtn: '4'),
                        criarBtnsNums(funcao: '5', numBtn: '5'),
                        criarBtnsNums(funcao: '6', numBtn: '6'),
                        criarBtnsCalcular(funcao: '+', btn: '+'),
                      ]),
                ),
                Expanded(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        criarBtnsNums(funcao: '1', numBtn: '1'),
                        criarBtnsNums(funcao: '2', numBtn: '2'),
                        criarBtnsNums(funcao: '3', numBtn: '3'),
                        criarBtnsCalcular(funcao: '-', btn: '-'),
                      ]),
                ),
                Expanded(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        criarBtnsNums(funcao: '0', numBtn: '0'),
                        criarBtnsCalcular(funcao: '.', btn: '.'),
                        criarBtnMostrarResultado(btn: '='),
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

