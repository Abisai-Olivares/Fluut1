import 'package:flutter/material.dart';
import 'package:test_json/models/empleado.dart';

class EmpleadoDetailView extends StatelessWidget {
  final Empleado empleado;

  EmpleadoDetailView({required this.empleado});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Empleado'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(empleado.photo),
                radius: 50,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'ID: ${empleado.id}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Fecha de nacimiento: ${empleado.fecha_nacimiento}',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Edad: ${empleado.edad}',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Género: ${empleado.genero}',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Cargo: ${empleado.cargo}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
