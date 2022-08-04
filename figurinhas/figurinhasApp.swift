//
//  figurinhasApp.swift
//  figurinhas
//
//  Created by Eduardo Matheus Oliveira de Córdova on 22/07/22.
//

import SwiftUI

@main
struct figurinhasApp: App {
    
    let minhaColecao = MinhaColecao()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(minhaColecao)
        }
    }
}
