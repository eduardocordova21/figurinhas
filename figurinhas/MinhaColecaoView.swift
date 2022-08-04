//
//  MinhaColecaoView.swift
//  figurinhas
//
//  Created by Eduardo Matheus Oliveira de Córdova on 04/08/22.
//

import SwiftUI

struct MinhaColecaoView: View {
    
    @EnvironmentObject var minhaColecao: MinhaColecao
    
    var body: some View {
        
        if(minhaColecao.figuras.count == 0){
            Text("Você não tem figuras na sua coleção!")
        }else{
            List(minhaColecao.figuras){ figura in
                Text(figura.nome)
            }
        }
    
    }
}

struct MinhaColecaoView_Previews: PreviewProvider {
    static var previews: some View {
        MinhaColecaoView()
    }
}
