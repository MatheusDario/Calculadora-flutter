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
          body: Column(
            children: [
              //visor
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(15.0),
                width: 400.0,
                height: 120.0,
                alignment: Alignment.center,
                child: Text('Visor',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 50.0)),
              ),
              //botões, layout incompleto
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
                                onPressed: () {},
                                child:
                                    Text('C', style: TextStyle(fontSize: 28.0)),
                              )),
                              Expanded(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.black, // Background color
                                        onPrimary: Colors.blue, // Text Color (Foreground color)
                                      ),
                                      onPressed: () {},
                                      child: Text('DEL',
                                          style: TextStyle(fontSize: 28.0)))),
                              Expanded(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.black, // Background color
                                        onPrimary: Colors.blue, // Text Color (Foreground color)
                                      ),
                                      onPressed: () {},
                                      child: Text('%',
                                          style: TextStyle(fontSize: 28.0)))),
                              Expanded(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.black, // Background color
                                        onPrimary: Colors.blue, // Text Color (Foreground color)
                                      ),
                                      onPressed: () {},
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
                                onPressed: () {},
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
                                      onPressed: () {},
                                      child: Text('8',
                                          style: TextStyle(fontSize: 28.0)))),
                              Expanded(
                                  child: ElevatedButton(
                                      style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.black),
                                      ),
                                      onPressed: () {},
                                      child: Text('9',
                                          style: TextStyle(fontSize: 28.0)))),
                              Expanded(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.black, // Background color
                                        onPrimary: Colors.blue, // Text Color (Foreground color)
                                      ),
                                      onPressed: () {},
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
                                onPressed: () {},
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
                                      onPressed: () {},
                                      child: Text('5',
                                          style: TextStyle(fontSize: 28.0)))),
                              Expanded(
                                  child: ElevatedButton(
                                      style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.black),
                                      ),
                                      onPressed: () {},
                                      child: Text('6',
                                          style: TextStyle(fontSize: 28.0)))),
                              Expanded(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.black, // Background color
                                        onPrimary: Colors.blue, // Text Color (Foreground color)
                                      ),
                                      onPressed: () {},
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
                                onPressed: () {},
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
                                      onPressed: () {},
                                      child: Text('2',
                                          style: TextStyle(fontSize: 28.0)))),
                              Expanded(
                                  child: ElevatedButton(
                                      style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.black),
                                      ),
                                      onPressed: () {},
                                      child: Text('3',
                                          style: TextStyle(fontSize: 28.0)))),
                              Expanded(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.black, // Background color
                                        onPrimary: Colors.blue, // Text Color (Foreground color)
                                      ),
                                      onPressed: () {},
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
                                onPressed: () {},
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
                                      onPressed: () {},
                                      child: Text('.',
                                          style: TextStyle(fontSize: 28.0)))),
                              Expanded(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.black, // Background color
                                        onPrimary: Colors.blue, // Text Color (Foreground color)
                                      ),
                                      onPressed: () {},
                                      child: Text('=',
                                          style: TextStyle(fontSize: 28.0)))),
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
