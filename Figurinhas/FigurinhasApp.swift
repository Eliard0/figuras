//
//  FigurinhasApp.swift
//  Figurinhas
//
//  Created by Eliardo Venancio on 27/09/24.
//

import SwiftUI

@main
struct FigurinhasApp: App {
    var body: some Scene {
        var minhaColecao = MinhaColecao()
        
        WindowGroup {
            ContentView()
                .environmentObject(minhaColecao)
        }
    }
}
