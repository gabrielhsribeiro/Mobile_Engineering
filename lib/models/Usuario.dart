class Usuario {
  String? _idUsuario;
  String? _nome;
  String? _email;
  String? _senha;

  Usuario();

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "idUsuario": idUsuario,
      "nome": nome,
      "email": email
    };

    return map;
  }

  get idUsuario => _idUsuario;

  set idUsuario(value) => _idUsuario = value;

  get nome => _nome;

  set nome(value) => _nome = value;

  get email => _email;

  set email(value) => _email = value;

  get senha => _senha;

  set senha(value) => _senha = value;
}
