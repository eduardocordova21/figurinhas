//
//  PropriedadesView.swift
//  figurinhas
//
//  Created by Eduardo Matheus Oliveira de Córdova on 27/07/22.
//

import SwiftUI

struct PropriedadesView: View {
   
    var imagem = "lifepreserver";
    var nome = "Vidas: ";
    var vidas = "2";
    var cor = Color.green
    
    var body: some View {
        HStack {
            Image(systemName: imagem)
                .foregroundColor(cor)
                .frame(width: 30)
                .font(.system(size: 30))
              
            Text(nome)
                                    
            Text(vidas).padding(.trailing)
        }
    }
}

struct PropriedadesView_Previews: PreviewProvider {
    static var previews: some View {
        PropriedadesView()
    }
}
