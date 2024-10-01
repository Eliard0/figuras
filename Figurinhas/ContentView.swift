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
                Label ("figurinhas", systemImage: "face.dashed")
            }
            
            NavigationView {
                MinhaColecaoView()
            }
                .tabItem {
                    Label (
                        "minhaColecao",
                        systemImage: "face.dashed"
                    )
                }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(MinhaColecao())
}
