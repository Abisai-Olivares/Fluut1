import 'package:test_json/viewModels/empleado_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:test_json/views/empleado_list_view.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EmpleadoViewmodel(),
      child: MaterialApp(
        home: EmpleadoListView(),
      ),);
  }
}