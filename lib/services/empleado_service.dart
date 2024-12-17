import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:test_json/models/empleado.dart';

class EmpleadoService{
    Future<List<Empleado>> fetchEmpleados() async {
    try{
    final response = await rootBundle.loadString('assets/empleados.json');
    final List<dynamic> data = jsonDecode(response);
    return data.map((empleadoJson)=> Empleado.fromJson(empleadoJson)).toList();
    }catch(e){
      print("Algo salio mal $e");
      throw Exception(e);
    }
  }

}