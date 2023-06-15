import 'package:flutter/material.dart';
import 'modelos/categorias.dart';
import 'package:ambu_app/formulario.dart';

class MenuPrincipal extends StatefulWidget {
  const MenuPrincipal({super.key});

  @override
  State<MenuPrincipal> createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(88, 185, 255, 1),
              Color.fromRGBO(65, 84, 191, 1),
            ],
          )),
          child: GridView.builder(
              itemCount: itemsMenu.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.all(16),
                    child: GestureDetector(
                        onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const FormularioScreen()))
                            },
                        child: Container(
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: Stack(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Icon(
                                      itemsMenu[index].iconName,
                                      size: 80,
                                      color: Colors.blueGrey.shade600,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 16),
                                    child: Text(
                                      itemsMenu[index].nombre,
                                      style: const TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.blueGrey),
                                    ),
                                  ),
                                )
                              ],
                            ))));
              })),
    );
  }
}
