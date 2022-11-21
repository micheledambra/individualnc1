//
//  ContentView.swift
//  individualnc1
//
//  Created by Michele D'Ambra on 15/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
      
        TabView{
            ProfView()
                .tabItem{
                    Label("Professori", systemImage: "person.3")
                    
                    
                }.tag(1)
            
            Libretto()
                .tabItem{
                    Label("Libretto", systemImage: "book")
                    
                }.tag(2)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
