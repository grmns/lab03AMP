// Definir la clase
class Usuario {
  String nombre;
  String email;
  String contrasena;

  Usuario(this.nombre, this.email, this.contrasena);
}

// Definir el mixin
mixin Autenticacion {
  void iniciarSesion() {
    print('Sesión iniciada');
  }
}

// Definir la clase que hereda de Usuario y usa el mixin
class UsuarioAutenticado extends Usuario with Autenticacion {
  UsuarioAutenticado(String nombre, String email, String contrasena) : super(nombre, email, contrasena);
}

void main() {
  // Crear un objeto de tipo UsuarioAutenticado
  var usuario = UsuarioAutenticado('german', 'grmn.developer@gmail.com', '123456');

  // Invocar el método iniciarSesion
  usuario.iniciarSesion();
}