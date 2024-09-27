//
//  ContentView.swift
//  Figurinhas
//
//  Created by Eliardo Venancio on 27/09/24.
//

import SwiftUI

struct PropriedadesView: View {
    var image = "lifepreserver"
    var nome = "Vidas: "
    var valor = "2"
    var cor = Color.green
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(cor)
                .font(.system(size: 30))
                .frame(width: 30)
            
            Text(nome)
            Text(valor)
                .padding(.trailing)
        }
    }
}

#Preview {
    ContentView()
}
