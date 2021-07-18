class Persona {
  /** Make private a variable, function...
   * Put a '_' as first character.
   */
  String _nombre = '', _apellido = '';

  Persona(this._nombre, this._apellido);

  String get nombre => _nombre;
  String get apellido => _apellido;

  set nombre(String nombre) => _nombre = nombre;
  set apellido(String apellido) => _apellido = apellido;

  String get nombreCompleto => '$_nombre $_apellido';
  String toString() => 'Person($_nombre $_apellido)';
}

void muestra_persona(Persona p) {
  print(p._nombre);
  print(p._apellido);
}
