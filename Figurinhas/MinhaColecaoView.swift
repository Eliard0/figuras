//
//  MinhaColecaoView.swift
//  Figurinhas
//
//  Created by Eliardo Venancio on 30/09/24.
//

import SwiftUI

struct MinhaColecaoView: View {
    @EnvironmentObject var minhaColecao: MinhaColecao
    
    var body: some View {
        if minhaColecao.figuras.count == 0 {
            Text("Voce nao tem nenhuma figurinha na sua colecao")
        } else {
            List(minhaColecao.figuras) { figura in
                NavigationLink(destination: FiguraDetalheView(figura: figura),
                               label: {
                    HStack {
                        Image(figura.imagem)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                        
                        Text(figura.nome)
                    }
                }
                )
                
            }
        }
    }
}

#Preview {
    MinhaColecaoView()
        .environmentObject(MinhaColecao())
}
