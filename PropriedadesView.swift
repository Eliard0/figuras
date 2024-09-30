//
//  ContentView.swift
//  Figurinhas
//
//  Created by Eliardo Venancio on 27/09/24.
//

import SwiftUI

enum TipoPropriedade {
    case numeroInteiro
    case numeroDecimal
    case texto
}

struct PropriedadesView: View {
    var image: String = "lifepreserver"
    var nome: String = "Vidas: "
    @Binding var valor: String
    @Binding var valorInt: Int
    @Binding var valorDecimal: Double
    var cor: Color = .green
    var tipo: TipoPropriedade = .numeroInteiro
    
    @State var apresentado = false
    
    var body: some View {
        Button(action: {
            apresentado = true
        }, label: {
            HStack {
                Image(systemName: image)
                    .foregroundColor(cor)
                    .font(.system(size: 30))
                    .frame(width: 30)
                
                Text(nome)
                
                if tipo == .texto {
                    Text("\(valor)")
                        .padding(.trailing)
                }
                
                if tipo == .numeroInteiro {
                    Text("\(valorInt)")
                        .padding(.trailing)
                }
                
                if tipo == .numeroDecimal {
                    Text("\(valorDecimal * 100, specifier: "%.0f")%")
                }
                
            }
        })
        .sheet(isPresented: $apresentado, content: {
            PropriedadeEditarView(valor: $valor, valorInt: $valorInt, valorDecimal: $valorDecimal, tipo: tipo)
        })
        
    }
}

#Preview {
    ContentView()
}
