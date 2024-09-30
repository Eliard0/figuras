//
//  PropriedadeEditarView.swift
//  Figurinhas
//
//  Created by Eliardo Venancio on 30/09/24.
//

import SwiftUI

struct PropriedadeEditarView: View {
    @Binding var valor: String
    @Binding var valorInt: Int
    @Binding var valorDecimal: Double
    var tipo: TipoPropriedade = .numeroInteiro

    
    var body: some View {
        if tipo == .numeroInteiro {
            Stepper("Valor Atual: \(valorInt)", value: $valorInt)
        }
        
        if tipo == .numeroDecimal {
            Text("\(valorDecimal * 100, specifier: "%.0f")%")
            Slider(value: $valorDecimal)
        }
        
        if tipo == .texto {
            TextEditor(text: $valor)
        }
        Spacer()
    }
}

#Preview {
    PropriedadeEditarView(valor: .constant(""), valorInt: .constant(0), valorDecimal: .constant(1.0), tipo: .numeroDecimal)
}
