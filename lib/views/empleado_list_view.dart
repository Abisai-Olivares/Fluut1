import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_json/viewModels/empleado_viewmodel.dart';

class EmpleadoListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de empleados"),
      ),
      body: FutureBuilder(
        future: Provider.of<EmpleadoViewmodel>(context, listen: false).fetchEmpleados(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error al cargar los empleados'),
            );
          } else {
            return Consumer<EmpleadoViewmodel>(
              builder: (context, viewModel, child) {
                return ListView.builder(
                  itemCount: viewModel.empleados.length,
                  itemBuilder: (context, index) {
                    final empleado = viewModel.empleados[index];
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(empleado.photo),
                        ),
                        title: Text(
                          'Empleado ID: ${empleado.id}',
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Fecha de nacimiento: ${empleado.fecha_nacimiento}'),
                            Text('Edad: ${empleado.edad}'),
                            Text('Género: ${empleado.genero}'),
                            Text('Cargo: ${empleado.cargo}'),
                          ],
                        ),
                        onTap: () {
                          // Acción al tocar el empleado
                        },
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
