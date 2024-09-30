//
//  ModeloDados.swift
//  Figurinhas
//
//  Created by Eliardo Venancio on 30/09/24.
//

import Foundation

class Figura: Identifiable, ObservableObject {
    var id = UUID()
    var nome: String
    var imagem: String
    var frase: String
    var descricao: String
    @Published var vidas: Int
    @Published var potencia: Double
    
    init(nome: String, imagem: String, frase: String, descricao: String, vidas: Int, potencia: Double) {
        self.nome = nome
        self.imagem = imagem
        self.frase = frase
        self.descricao = descricao
        self.vidas = vidas
        self.potencia = potencia
    }
}

class MinhaColecao: ObservableObject {
    @Published var figuras: [Figura] = []
}

var figuras = [
    Figura(nome: "x", imagem: "imagem01", frase: "Primeira imagem", descricao: "ola mundo", vidas: 10, potencia: 0.10),
    Figura(nome: "y", imagem: "imagem02", frase: "Segunda imagem", descricao: "mundo ola", vidas: 20, potencia: 0.30),
    Figura(nome: "z", imagem: "imagem03", frase: "Terceira imagem", descricao: "hello", vidas: 30, potencia: 0.40),
    Figura(nome: "o", imagem: "imagem04", frase: "Quarta imagem", descricao: "dev", vidas: 40, potencia: 0.50),
]
