//
//  ContentView.swift
//  figurinhas
//
//  Created by Eduardo Matheus Oliveira de Córdova on 22/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var itensNaColecao: Int = 0
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            Text("Mingle")
                .font(.title)
                .bold()
                .padding()
            
            HStack(){
                Text("Frase: ")
                    .bold()
                
                Text("\"Problema em dobro\"")
            }.padding()
            
            HStack(){
                Image("figura_01")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75)
                  
                VStack(alignment: .leading) {
                    
                    PropriedadesView();
                    
                    PropriedadesView(imagem: "bolt", nome: "Potencia: ", vidas: "60%", cor: .yellow)
                }
            }.padding(30.0)
                 
            HStack(){
                Spacer()
                
                Text("Mingle se destaca por fazer o dobro do trabalho na metade do tempo, com extrema precisão. Essas habilidades são úteis para ela em sua função de Analista de Dados Sênior para uma empresa internacional de computação em nuvem. Ela também tem uma propensão para dança de salão, dança de linha e praticamente qualquer tipo de atividade que a deixe dançar ao som da música.")
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
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
