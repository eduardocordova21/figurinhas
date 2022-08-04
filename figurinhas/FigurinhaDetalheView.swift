//
//  FigurinhaDetalheView.swift
//  figurinhas
//
//  Created by Eduardo Matheus Oliveira de Córdova on 27/07/22.
//

import SwiftUI

struct FigurinhaDetalheView: View {
    
    @State var itensNaColecao: Int = 0
    @ObservedObject var figura: Figura
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(){
                Text("Frase: ")
                    .bold()
                
                Text("\"\(figura.frase)\"")
            }.padding()
            
            HStack(){
                Image(figura.imagem)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75)
                  
                VStack(alignment: .leading) {
                    PropriedadesView(imagem: "lifepreserver", nome: "Vidas: ", valor: .constant(""),valorInt: $figura.vidas,valorDouble: .constant(1.0), cor: .green, tipo: TipoDaPropriedade.tipoInteiro)
                    PropriedadesView(imagem: "bolt", nome: "Potencia: ", valor: .constant(""),valorInt: .constant(0),valorDouble: $figura.potencia, cor: .yellow, tipo: TipoDaPropriedade.tipoDouble)
                }
            }.padding(30.0)
                 
            HStack(){
                Spacer()
                
                Text(figura.descricao)
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
                    
                Spacer()
            }
        
            Spacer()
            
            HStack(){
                Spacer()
                
                Button {
                    itensNaColecao += 1
                } label: {
                    
                    if(itensNaColecao == 0){
                        Text("Adicionar à coleção")
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.blue)
                    }else{
                        Text("Na sua colecao: \(itensNaColecao)")
                            .padding()
                            .background(Color.green)
                    }
                }
                .cornerRadius(50)
                
                Spacer()
            }
            .padding()
        }.navigationTitle(
            Text(figura.nome)
        )
    }
}

struct FigurinhaDetalheView_Previews: PreviewProvider {
    static var previews: some View {
        FigurinhaDetalheView(figura: figuras[0])
    }
}
