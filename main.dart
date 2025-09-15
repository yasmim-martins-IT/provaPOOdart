import 'dart:io';
import 'animal.dart';

void main() {
  List<Animal> animais = [];

  while (true) {
    print("\n===== MENU=====");
    print("1 - Cadastrar novo animal");
    print("2 - Listar animais");
    print("3 - Editar animal");
    print("4 - Remover animal");
    print("5 - Filtrar animais por porte");
    print("0 - Sair");

    String? opcao = stdin.readLineSync();

    switch (opcao) {
      case "1":
        cadastrarAnimal(animais);
        break;
      case "2":
        listarAnimais(animais);
        break;
      case "3":
        editarAnimal(animais);
        break;
      case "4":
        removerAnimal(animais);
        break;
      case "5":
        filtrarAnimais(animais);
        break;
      case "0":
        print("Saindo do sistema...");
        return;
      default:
        print("Opção inválida!");
    }
  }
}


void cadastrarAnimal(List<Animal> animais) {
  print("Digite o nome do animal:");
  String? nome = stdin.readLineSync();

  print("Escolha a espécie: 1-Leão  2-Elefante  3-Pássaro");
  String? escolha = stdin.readLineSync();

  print("Digite o porte (pequeno, médio, grande):");
  String? porte = stdin.readLineSync();

  Animal novo;
  switch (escolha) {
    case "1":
      novo = Leao(nome ?? "Sem nome", porte ?? "médio");
      break;
    case "2":
      novo = Elefante(nome ?? "Sem nome", porte ?? "grande");
      break;
    case "3":
      novo = Passaro(nome ?? "Sem nome", porte ?? "pequeno");
      break;
    default:
      print("Espécie inválida!");
      return;
  }
  animais.add(novo);
  print("Animal cadastrado com sucesso!");
}

void listarAnimais(List<Animal> animais) {
  if (animais.isEmpty) {
    print("Nenhum animal cadastrado.");
  } else {
    for (int i = 0; i < animais.length; i++) {
      print("[$i] ${animais[i]}");
    }
  }
}

void editarAnimal(List<Animal> animais) {
  listarAnimais(animais);
  print("Digite o índice do animal para editar:");
  int? index = int.tryParse(stdin.readLineSync() ?? "");

  if (index == null || index < 0 || index >= animais.length) {
    print("Índice inválido!");
    return;
  }

  print("Digite o novo nome:");
  String? novoNome = stdin.readLineSync();
  animais[index].nome = novoNome ?? animais[index].nome;

  print("Digite o novo porte:");
  String? novoPorte = stdin.readLineSync();
  animais[index].porte = novoPorte ?? animais[index].porte;

  print("Animal atualizado com sucesso!");
}

void removerAnimal(List<Animal> animais) {
  listarAnimais(animais);
  print("Digite o índice do animal para remover:");
  int? index = int.tryParse(stdin.readLineSync() ?? "");

  if (index == null || index < 0 || index >= animais.length) {
    print("Índice inválido!");
    return;
  }

  animais.removeAt(index);
  print("Animal removido com sucesso!");
}

void filtrarAnimais(List<Animal> animais) {
  print("Digite o porte para filtrar (pequeno, médio, grande):");
  String? porte = stdin.readLineSync();

  var filtrados = animais.where((a) => a.porte == porte).toList();

  if (filtrados.isEmpty) {
    print("Nenhum animal encontrado com o porte '$porte'.");
  } else {
    for (var animal in filtrados) {
      print(animal);
    }
  }
}
