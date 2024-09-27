//
//  FiguraDetalheView.swift
//  Figurinhas
//
//  Created by Eliardo Venancio on 27/09/24.
//

import SwiftUI

struct FiguraDetalheView: View {
    @State var itensNaColecao: Int = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Mingle")
                .font(.title)
                .bold()
                .padding()
            
            HStack {
                Text("Frase: ")
                    .fontWeight(.black)
                    .bold()
                    .padding(.leading)
                
                Text("\"Problema em dobro\"")
                    .font(.title)
            }
            
            HStack {
                
                Image("imagem01")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75)
                
                
                VStack(alignment: .leading) {
                    
                    PropriedadesView()
                    PropriedadesView(image: "bolt", nome: "Potencia", valor: "60%", cor: .yellow)
                    
                    
                }
                .padding(.leading, 10)
            }
            .padding(30)
            
            HStack {
                Spacer()
                Text("ola mais texto aleatorio")
                Spacer()
            }
            HStack {
                Spacer()
                Button(action: {
                    itensNaColecao += 1
                }, label: {
                    if itensNaColecao == 0 {
                        Text("Adicionar á coleção: \(itensNaColecao)")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                    }else{
                        Text("Na sua coleção: \(itensNaColecao)")
                            .padding()
                            .background(.green)
                            .foregroundColor(.white)
                    }
                }).cornerRadius(30)
                
                Spacer()
            }.padding()
            
        }
        Spacer()
    }
}

#Preview {
    FiguraDetalheView()
}
