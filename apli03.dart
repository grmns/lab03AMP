// Definir la clase base
class Empleado {
  String nombre;
  String apellido;
  double salario;
  int horasTrabajadas;

  Empleado(this.nombre, this.apellido, this.salario, this.horasTrabajadas);
}

// Definir el mixin
mixin Bonificaciones {
  double calcularBonificacion(double salario) {
    return salario * 0.1;
  }
}

// Definir la clase que hereda de Empleado y usa el mixin
class EmpleadoConBonificaciones extends Empleado with Bonificaciones {
  EmpleadoConBonificaciones(String nombre, String apellido, double salario, int horasTrabajadas) : super(nombre, apellido, salario, horasTrabajadas);
}

void main() {
  // Crear una lista de objetos de tipo EmpleadoConBonificaciones
  var empleados = [
    EmpleadoConBonificaciones('German', 'Sandoval', 2000, 40),
    EmpleadoConBonificaciones('Jared', 'Garcia', 2500, 35),
    EmpleadoConBonificaciones('Adriana', 'Palomino', 1800, 45),
  ];

  // Calcular la bonificación para cada empleado y mostrar el resultado
  for (var empleado in empleados) {
    var bonificacion = empleado.calcularBonificacion(empleado.salario);
    print('${empleado.nombre} ${empleado.apellido}: Bonificación de \S/.${bonificacion}');
  }
}
