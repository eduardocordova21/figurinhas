//
//  PropriedadesView.swift
//  figurinhas
//
//  Created by Eduardo Matheus Oliveira de Córdova on 27/07/22.
//

import SwiftUI

enum TipoDaPropriedade {
    case tipoInteiro
    case tipoDouble
    case tipoTexto
}

struct PropriedadesView: View {
   
    @State var isPresented = false
    
    var imagem: String = "";
    var nome: String = "";
    @State var valor: String = "";
    @State var valorInt: Int = 0;
    @State var valorDouble: Double = 1.0;
    var cor = Color.black;
    var tipo: TipoDaPropriedade = TipoDaPropriedade.tipoInteiro
    
        
    var body: some View {
        Button {
            isPresented = true
        } label: {
            HStack {
                Image(systemName: imagem)
                    .foregroundColor(cor)
                    .frame(width: 30)
                    .font(.system(size: 30))
                  
                Text(nome)
                           
                if(tipo == TipoDaPropriedade.tipoTexto){
                    Text(valor).padding(.trailing)
                }
                
                if(tipo == TipoDaPropriedade.tipoInteiro){
                    Text("\(valorInt)").padding(.trailing)
                }
                
                if(tipo == TipoDaPropriedade.tipoDouble){
                    Text("\(valorDouble * 100, specifier: "%0.f")%").padding(.trailing)
                }
                
            }
        }.sheet(isPresented: $isPresented) {
            PropriedadeEditarView(valor: $valor, valorInt: $valorInt, valorDouble: $valorDouble, tipo: tipo)
        }
    }
}

struct PropriedadesView_Previews: PreviewProvider {
    static var previews: some View {
        PropriedadesView()
    }
}
