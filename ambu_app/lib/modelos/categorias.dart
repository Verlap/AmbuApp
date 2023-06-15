import 'package:flutter/material.dart';

class CategoriasMenuPrincipal {
  int id;
  String nombre;
  var iconName;

  CategoriasMenuPrincipal(this.id, this.nombre, this.iconName);
}

final itemsMenu = [
  CategoriasMenuPrincipal(1, 'Opción 1', Icons.local_shipping),
  CategoriasMenuPrincipal(2, 'Opción 2', Icons.monitor_heart),
  CategoriasMenuPrincipal(3, 'Opción 3', Icons.pin_drop),
  CategoriasMenuPrincipal(4, 'Opción 4', Icons.medical_information),
  CategoriasMenuPrincipal(5, 'Opción 5', Icons.settings),
  CategoriasMenuPrincipal(6, 'Opción 6', Icons.power_settings_new),
];
