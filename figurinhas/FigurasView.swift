//
//  FigurasView.swift
//  figurinhas
//
//  Created by Eduardo Matheus Oliveira de Córdova on 28/07/22.
//

import SwiftUI

struct FigurasView: View {
    
    @State var isPresented = false
    
    var figuras = ["Mingle", "Yodel"]
    
    var body: some View {
        
        List(figuras, id: \.self){ figura in
            Button {
                isPresented = true;
            } label: {
                Text(figura)
            }.sheet(isPresented: $isPresented) {
                FigurinhaDetalheView();
            }
        }
    }
}

struct FigurasView_Previews: PreviewProvider {
    static var previews: some View {
        FigurasView()
    }
}
