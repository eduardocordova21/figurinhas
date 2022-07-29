//
//  FigurasView.swift
//  figurinhas
//
//  Created by Eduardo Matheus Oliveira de Córdova on 28/07/22.
//

import SwiftUI

struct FigurasView: View {
    
    var figuras = ["Mingle", "Yodel"]
    
    var body: some View {
        
        List(figuras, id: \.self){ figura in
            NavigationLink {
                FigurinhaDetalheView();
            } label: {
                Text(figura)
            }
        }
    }
}

struct FigurasView_Previews: PreviewProvider {
    static var previews: some View {
        FigurasView()
    }
}
