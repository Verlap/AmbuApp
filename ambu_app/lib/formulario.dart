import 'package:flutter/material.dart';
import 'package:flutter_app/MenuPrincipal.dart';

class FormularioScreen extends StatelessWidget {
  const FormularioScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(88, 185, 255, 1),
                Color.fromRGBO(65, 84, 191, 1),
              ],
            ),
          ),
          child: Padding(
              padding: const EdgeInsets.all(16),
              child: ListView(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    width: 1, color: Colors.black26)),
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Text(
                                    'Signos  Vitales',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 0),
                                    child: inputField(
                                        'T.A. Sistolica (mmHg)', 'number')),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 0),
                                    child: inputField(
                                        'T.A. Diastolica (mmHg)', 'number')),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 0),
                                    child:
                                        inputField('F.R (R.P.M.)', 'number')),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 0),
                                    child: inputField('TEMP (C°)', 'number')),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 0),
                                    child:
                                        inputField('GLUC (mg/dl)', 'number')),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 0),
                                    child: inputField('F.C (L.P.M)', 'number')),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 24, right: 26, bottom: 24),
                                    child: inputField('SaO2 (%)', 'number')),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    width: 1, color: Colors.black26)),
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Text(
                                    'Escala Glasgow',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 0),
                                    child: inputField('Total', 'number')),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 0),
                                    child: inputField(
                                        'Estado de Consciencia', 'text')),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 24, right: 26, bottom: 24),
                                    child: inputField(
                                        'Descripción Clínica', 'text')),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(24),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.blue.shade700),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const MenuPrincipal()));
                              },
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 8),
                                child: Text('Enviar Datos'),
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              )),
        ));
  }
}

Widget inputField(String textoInput, var inputType) {
  switch (inputType) {
    case 'text':
      inputType = TextInputType.text;
      break;
    case 'number':
      inputType = TextInputType.number;
      break;
  }
  return Column(children: [
    Align(
        alignment: Alignment.centerLeft,
        child: Text(
          textoInput,
          textAlign: TextAlign.left,
          style: const TextStyle(
              height: 4,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black87),
        )),
    TextFormField(
      keyboardType: inputType,
      enableSuggestions: false,
      autocorrect: false,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: '',
      ),
    ),
  ]);
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Test',
    theme: ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.indigo,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: const FormularioScreen(),
  ));
}
