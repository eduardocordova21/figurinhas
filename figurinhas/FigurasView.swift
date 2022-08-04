//
//  FigurasView.swift
//  figurinhas
//
//  Created by Eduardo Matheus Oliveira de Córdova on 28/07/22.
//

import SwiftUI

struct FigurasView: View {
    
    @State var isPresented = false
        
    var body: some View {
        
        List(figuras){ figura in
            Button {
                isPresented = true;
            } label: {
                HStack(){
                    Image(figura.imagem+"_p")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .background(Color.gray)
                        .containerShape(Circle())
                    Text(figura.nome)
                }
            }.sheet(isPresented: $isPresented) {
                FigurinhaDetalheView(figura: figura);
            }
        }.navigationTitle("Figuras")
        
    }
}

struct FigurasView_Previews: PreviewProvider {
    static var previews: some View {
        FigurasView()
    }
}
