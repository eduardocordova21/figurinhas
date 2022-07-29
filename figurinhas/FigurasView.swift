//
//  FigurasView.swift
//  figurinhas
//
//  Created by Eduardo Matheus Oliveira de Córdova on 28/07/22.
//

import SwiftUI

struct FigurasView: View {
    var body: some View {
        NavigationLink {
            FigurinhaDetalheView();
        } label: {
            Text("Mingle")
        }

    }
}

struct FigurasView_Previews: PreviewProvider {
    static var previews: some View {
        FigurasView()
    }
}
