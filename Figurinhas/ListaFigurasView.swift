//
//  ListaFigurasView.swift
//  Figurinhas
//
//  Created by Eliardo Venancio on 27/09/24.
//

import SwiftUI

struct ListaFigurasView: View {
    var body: some View {
        NavigationLink(destination: FiguraDetalheView()) { Text("detalhe")
        }
    }
}

#Preview {
    ListaFigurasView()
}
