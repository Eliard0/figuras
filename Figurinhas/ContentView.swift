//
//  ContentView.swift
//  Figurinhas
//
//  Created by Eliardo Venancio on 27/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                ListaFigurasView()
            }
            .tabItem {
                Label ("Figurinhas", systemImage: "face.dashed")
            }
            
            MinhaColecao()
                .tabItem {
                    Label (
                        "Minha colecao",
                        systemImage: "face.dashed"
                    )
                }
        }
    }
}

#Preview {
    ContentView()
}
