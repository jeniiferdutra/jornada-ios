//
//  main.swift
//  objeto
//
//  Created by Jenifer Rocha on 20/02/25.
//

import Foundation

// MARK: Um objeto pode ser uma variavel, funcao, ou estrutura de dados. Em programacao orientada a objetos, a palavra objeto refere-se a uma instancia de uma classe. Contém as propriedades que o definem, que sao as caracteristicas do objeto.

// MARK: Uma classe é uma estrutura que abstrai um conjunto de objetos com caracteristicas similares. A classe é responsável por definir o comportamento de seus objetos - através de métodos - e os estados possíveis destes objetos - através de atributos.

// MARK: Atributos -> caracteristicas de uma classe/objeto
// MARK: Metodos -> açoes que uma classe pode ter

// MARK: UMA CLASSE É REFERENTE A UM OBJETO


class Casa {
    
    var quantidadeDeQuartos: Int = 10
    var temBanheiro: Bool = true
    var quantidadeDePortas: Int = 25
    var estaNoCondominio: Bool = true
    var corDaCasa: String = "Branco"
    
    func reformar() {
        print("A casa esta em reforma")
    }
    
    func abrirJanela() {
        print("Minha casa esta com a janela aberta")
    }
    
    func acenderLampada() {
        print("Minha casa esta com as lampadas acesas")
    }
    
}

// Criar objeto
var minhaCasa: Casa? = Casa() // () -> Instancia, fazer a leitura de toda a classe.
print(minhaCasa?.quantidadeDeQuartos ?? "teste")


class Pessoa {
    
    var nome: String
    var idade: Int
    var peso: Double
    var altura: Double // se colocar ? ele deixa de ser um atributo obrigatorio
    private var acimaDoPeso: Bool = false // nao tem como acessar por ser privado
    
    // Metodo construtor, fazer manipulaçoes atraves dele
    init(nome: String, idade: Int, peso: Double, altura: Double) {
        self.nome = nome
        self.idade = idade
        self.peso = peso
        self.altura = altura
    }
    
    public func getAcimaDoPeso() -> Bool { // Acessar o atributo
        return acimaDoPeso
    }
    
    public func setAcimaDoPeso(value: Bool) { // Alterar o valor do atributo
        self.acimaDoPeso = value
    }
    
}

var jenifer: Pessoa = Pessoa(nome: "Jenifer", idade: 25, peso: 58, altura: 160)
var guilherme: Pessoa = Pessoa(nome: "Guilherme", idade: 31, peso: 80, altura: 173)
print(jenifer.idade)
print(guilherme.nome)


// MARK: ENCAPSULAMENTO

// Somente quem esta dentro da classe consegue acessar os atributos que estao privates, ou seja, nao tem como acessar de maneira externa

jenifer.setAcimaDoPeso(value: true)

print(jenifer.getAcimaDoPeso())
