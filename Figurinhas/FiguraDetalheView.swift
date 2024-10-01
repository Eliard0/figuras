//
//  FiguraDetalheView.swift
//  Figurinhas
//
//  Created by Eliardo Venancio on 27/09/24.
//

import SwiftUI

struct FiguraDetalheView: View {
//    @State var itensNaColecao: Int = 0
    @ObservedObject var figura: Figura
    @EnvironmentObject var minhaColecao: MinhaColecao
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text("Frase: ")
                    .fontWeight(.black)
                    .bold()
                    .padding(.leading)
                
                Text("\"\(figura.frase)\"")
//                    .font(.title)
            }
            
            HStack {
                
                Image(figura.imagem)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75)
                
                
                VStack(alignment: .leading) {
                    
                    PropriedadesView(valor: .constant(""),valorInt: $figura.vidas, valorDecimal: .constant(0), tipo: .numeroInteiro)
                    PropriedadesView(image: "bolt", nome: "Potencia", valor: .constant(""), valorInt: .constant(0),valorDecimal: $figura.potencia, cor: .yellow, tipo: .numeroDecimal)
                    
                    
                }
                .padding(.leading, 10)
            }
            .padding(30)
            
            HStack {
                Spacer()
                Text(figura.descricao)
                Spacer()
            }
            HStack {
                Spacer()
                Button(action: {
                    minhaColecao.figuras.append(figura)
                    minhaColecao.salvar()
                }, label: {
                    if minhaColecao.figuras.count == 0 {
                        Text("Adicionar á coleção")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                    }else{
                        Text("Na sua coleção: \(minhaColecao.figuras.count)")
                            .padding()
                            .background(.green)
                            .foregroundColor(.white)
                    }
                }).cornerRadius(30)
                
                Spacer()
            }.padding()
            
        }
        .navigationTitle(
            Text(figura.nome)
        )
        Spacer()
    }
}

#Preview {
    FiguraDetalheView(figura: figuras[0])
        .environmentObject(MinhaColecao())
}
