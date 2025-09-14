import 'dart:io';

class Animal {
  String nome;
  String especie;
  String porte;

  Animal(this.nome, this.especie, this.porte);

  void emitirSom() {
    print("$nome está emitindo um som.");
  }

  void alimentar() {
    print("$nome está se alimentando.");
  }

  @override
  String toString() {
    return "Nome: $nome | Espécie: $especie | Porte: $porte";
  }
}

class Leao extends Animal {
  Leao(String nome, String porte) : super(nome, "Leão", porte);

  @override
  void emitirSom() {
    print("raaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaawr");
  }
}

class Elefante extends Animal {
  Elefante(String nome, String porte) : super(nome, "Elefante", porte);

  @override
  void emitirSom() {
    print("pruuuuuuuuuuuuh  (som de elefante)");
  }
}

class Passaro extends Animal {
  Passaro(String nome, String porte) : super(nome, "Passaro", porte);

  @override
  void emitirSom() {
    print("piu piu piu piu piu");
  }
}

class Cobra extends Animal {
  Cobra(String nome, String porte) : super(nome, "Cobra", porte);

  @override
  void emitirSom() {
    print('shiu shiu shiuuuu');
  }
}

class Macaco extends Animal {
  Macaco(String nome, String porte) : super(nome, 'Macaco', porte);

  @override
  void emitirSom() {
    print('UH UH AH AH AH'); 
  }
}
