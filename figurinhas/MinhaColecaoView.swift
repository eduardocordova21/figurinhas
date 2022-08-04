//
//  MinhaColecaoView.swift
//  figurinhas
//
//  Created by Eduardo Matheus Oliveira de Córdova on 04/08/22.
//

import SwiftUI

struct MinhaColecaoView: View {
    
    @EnvironmentObject var minhaColecao: MinhaColecao
    @State var isPresented = false
    
    var body: some View {
        
        if(minhaColecao.figuras.count == 0){
            Text("Você não tem figuras na sua coleção!")
        }else{
            
            List(minhaColecao.figuras){ figura in
                
                Button{
                    isPresented = true
                } label: {
                    HStack(){
                        Image(figura.imagem+"_p")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .background(Color.green)
                            .containerShape(Circle())
                        
                        Text(figura.nome)
                    }
                }.sheet(isPresented: $isPresented) {
                    FigurinhaDetalheView(figura: figura)
                }
               
            }.navigationTitle("Minha coleção")
        }
    
    }
}

struct MinhaColecaoView_Previews: PreviewProvider {
    static var previews: some View {
        MinhaColecaoView()
    }
}
