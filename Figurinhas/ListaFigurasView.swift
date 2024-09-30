//
//  ListaFigurasView.swift
//  Figurinhas
//
//  Created by Eliardo Venancio on 27/09/24.
//

import SwiftUI

struct ListaFigurasView: View {
    //    var figuras = ["Mingle", "Yodel"]
    @State var modal = false
    
    var body: some View {
        
        List(figuras) { figuras in
            NavigationLink(destination: FiguraDetalheView(figura: figuras)) {
                Button(action: {
                    modal = true
                }, label: {
                    HStack {
                        Image(figuras.imagem)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                        //                        .background(.gray)
                        //                        .containerShape(Circle())
                        Text(figuras.nome)
                    }
                })
            }
        }
        
        //        .sheet(isPresented: $modal, content: {
        //            FiguraDetalheView(figura: figuras[0])
        //        })
        .navigationTitle("Figuras")
    }
}

#Preview {
    ListaFigurasView()
}
