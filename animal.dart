import 'dart:io';

// ==========================
// Classe base (com encapsulamento)
// ==========================
class Animal {
  String _nome;
  String _especie;
  String _porte; // pequeno, médio ou grande

  // Construtor
  Animal(this._nome, this._especie, this._porte);

  // Getters
  String get nome => _nome;
  String get especie => _especie;
  String get porte => _porte;

  // Setters (com validação)
  set nome(String novoNome) {
    if (novoNome.isNotEmpty) {
      _nome = novoNome;
    } else {
      print("Nome inválido!");
    }
  }

  set porte(String novoPorte) {
    if (["pequeno", "médio", "grande"].contains(novoPorte)) {
      _porte = novoPorte;
    } else {
      print("Porte inválido!");
    }
  }

  void emitirSom() {
    print("$_nome está emitindo um som genérico.");
  }

  void alimentar() {
    print("$_nome está se alimentando.");
  }

  @override
  String toString() {
    return "Nome: $_nome | Espécie: $_especie | Porte: $_porte";
  }
}


class Leao extends Animal {
  Leao(String nome, String porte) : super(nome, "Leão", porte);

  @override
  void emitirSom() {
    print("$nome : Rooooaaaarrr! 🦁");
  }
}

class Elefante extends Animal {
  Elefante(String nome, String porte) : super(nome, "Elefante", porte);

  @override
  void emitirSom() {
    print("$nome : Prrrhhhuuuuuuuuuu! ");
  }
}

class Passaro extends Animal {
  Passaro(String nome, String porte) : super(nome, "Pássaro", porte);

  @override
  void emitirSom() {
    print("$nome : Piu piu! ");
  }
}

class Macaco extends Animal {
  Macaco(String nome, String porte) : super(nome, "Macaco", porte);

  @override
  void emitirSom() {
    print("$nome : Uh uh ah ah! ");
  }
}
