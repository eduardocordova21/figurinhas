//
//  PropriedadeEditarView.swift
//  figurinhas
//
//  Created by Eduardo Matheus Oliveira de Córdova on 28/07/22.
//

import SwiftUI

struct PropriedadeEditarView: View {
    
    @Binding var valor: String;
    @Binding var valorInt: Int;
    @Binding var valorDouble: Double;
    var tipo: TipoDaPropriedade = TipoDaPropriedade.tipoInteiro
    
    var body: some View {
        
        VStack(){
            if(tipo == TipoDaPropriedade.tipoInteiro){
                Stepper("valor Atual: \(valorInt)", value: $valorInt)
            }
            
            if(tipo == TipoDaPropriedade.tipoDouble){
                Text("Valor Atual: \(valorDouble * 100, specifier: "%.0f")%")
                Slider(value: $valorDouble)
            }
            
            if(tipo == TipoDaPropriedade.tipoTexto){
                TextEditor(text: $valor)
            }
            
            Spacer()
        }.padding()
       
    }
}

struct PropriedadeEditarView_Previews: PreviewProvider {
    static var previews: some View {
        PropriedadeEditarView(valor: .constant(""), valorInt: .constant(1), valorDouble: .constant(1.0), tipo: TipoDaPropriedade.tipoDouble)
    }
}
