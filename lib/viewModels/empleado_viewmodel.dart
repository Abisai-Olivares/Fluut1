import 'package:flutter/material.dart';
import 'package:test_json/models/empleado.dart';
import 'package:test_json/services/empleado_service.dart';

class EmpleadoViewmodel extends ChangeNotifier{
  final EmpleadoService _empleadoService = EmpleadoService();
  List<Empleado> _empleados = [];
  List<Empleado> get empleados => _empleados;

  Future<void> fetchEmpleados() async{
    _empleados = await _empleadoService.fetchEmpleados();
    notifyListeners();
  }

}