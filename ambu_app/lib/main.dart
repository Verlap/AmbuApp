import 'package:flutter/material.dart';
import 'package:ambu_app/MenuPrincipal.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        /* appBar: AppBar(
        title: const Text('Login'),
      ), */
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
          child: Center(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 400,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(16), bottom: Radius.zero),
                        color: Colors.white),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 24),
                            child: Text(
                              'INICIO DE SESIÓN',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 24),
                              child: Column(children: [
                                const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Usuario',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        height: 4,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.blueGrey,
                                      ),
                                    )),
                                TextFormField(
                                  keyboardType: TextInputType.text,
                                  enableSuggestions: false,
                                  autocorrect: false,
                                  obscureText: false,
                                  decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    prefixIcon: Icon(Icons.person),
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 10.0, 20.0, 10.0),
                                    border: OutlineInputBorder(),
                                    labelText: '',
                                  ),
                                ),
                              ])),
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 24),
                              child: Column(children: [
                                const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Contraseña',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        height: 4,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.blueGrey,
                                      ),
                                    )),
                                TextFormField(
                                  keyboardType: TextInputType.text,
                                  enableSuggestions: false,
                                  autocorrect: false,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    prefixIcon: Icon(Icons.lock),
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 10.0, 20.0, 10.0),
                                    border: OutlineInputBorder(),
                                    labelText: '',
                                  ),
                                ),
                              ])),
                          Padding(
                            padding: const EdgeInsets.only(top: 24),
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
                                child: Text('Ingresar'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ))),
        ));
  }
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
    home: const LoginPage(),
  ));
}
