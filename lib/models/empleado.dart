class Empleado{
  final int id;
  final String fecha_nacimiento;
  final int edad;
  final String genero;
  final String cargo;
  final String photo;

  Empleado({
    required this.id,
    required this.fecha_nacimiento,
    required this.edad,
    required this.genero,
    required this.cargo,
    required this.photo
  });

  factory Empleado.fromJson(Map<String,dynamic>json){
    return Empleado(
      id: json['id'],
      fecha_nacimiento: json['fecha_nacimiento'],
      edad: json['edad'],
      genero: json['genero'],
      cargo: json['cargo'],
      photo: json['photo'],

    );
  }
}