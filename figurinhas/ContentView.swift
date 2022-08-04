//
//  ContentView.swift
//  figurinhas
//
//  Created by Eduardo Matheus Oliveira de Córdova on 22/07/22.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        TabView{
            NavigationView{
                FigurasView() 
            }.tabItem{
                Label("Figuras", systemImage: "face.smiling")
            }
            
            NavigationView{
                MinhaColecaoView()
            }
            .tabItem{
                    Label("Minha coleção", systemImage: "face.dashed")
                };
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
