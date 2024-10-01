//
//  ModeloDados.swift
//  Figurinhas
//
//  Created by Eliardo Venancio on 30/09/24.
//

import Foundation

class Figura: Identifiable, ObservableObject, Codable {
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
    
    enum CodingKeys: CodingKey {
        case nome
        case imagem
        case frase
        case descricao
        case vidas
        case potencia
    }
    
    func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.nome, forKey: .nome)
        try container.encode(self.imagem, forKey: .imagem)
        try container.encode(self.frase, forKey: .frase)
        try container.encode(self.descricao, forKey: .descricao)
        try container.encode(self.vidas, forKey: .vidas)
        try container.encode(self.potencia, forKey: .potencia)
    }
    
    required init(from decoder: any Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.nome  = try values.decode(String.self, forKey: .nome)
        self.imagem  = try values.decode(String.self, forKey: .imagem)
        self.frase  = try values.decode(String.self, forKey: .frase)
        self.descricao  = try values.decode(String.self, forKey: .descricao)
        self.vidas  = try values.decode(Int.self, forKey: .vidas)
        self.potencia  = try values.decode(Double.self, forKey: .potencia)
    }
}

class MinhaColecao: ObservableObject {
    @Published var figuras: [Figura] = []
    
    init() {
        if let figurasCodificadas = UserDefaults.standard.object(forKey: "figuras") as? Data {
            let decoder = JSONDecoder()
            if let figurasDecodificadas = try? decoder.decode([Figura].self, from: figurasCodificadas) {
                self.figuras = figurasDecodificadas
            }
        }
    }
    
    func salvar(){
        let encoder = JSONEncoder()
        if let figurinhasCodificadas = try? encoder.encode(self.figuras){
            UserDefaults.standard.set(figurinhasCodificadas, forKey: "figuras")
        }
    }
}

var figuras = [
    Figura(nome: "x", imagem: "imagem01", frase: "Primeira imagem", descricao: "ola mundo", vidas: 10, potencia: 0.10),
    Figura(nome: "y", imagem: "imagem02", frase: "Segunda imagem", descricao: "mundo ola", vidas: 20, potencia: 0.30),
    Figura(nome: "z", imagem: "imagem03", frase: "Terceira imagem", descricao: "hello", vidas: 30, potencia: 0.40),
    Figura(nome: "o", imagem: "imagem04", frase: "Quarta imagem", descricao: "dev", vidas: 40, potencia: 0.50),
]
