//
//  ProfView.swift
//  individualnc1
//
//  Created by Michele D'Ambra on 21/11/22.
//

import SwiftUI

struct ProfView: View {
   
    @State private var searchText = ""

    var body: some View {
        
        let cardWidth: CGFloat = 365
        let cardHeight: CGFloat = 110
        let Radius: CGFloat = 10
        
        
        NavigationStack{
            
            ScrollView{
                
                Spacer()
                    .frame(width:20)
                
                ZStack{
                    VStack{
                        
                        
                        ZStack(alignment: .leading){
                            
                            RoundedRectangle(cornerRadius: Radius)
                                .foregroundColor(Color.gray)
                                .frame(width: cardWidth, height: cardHeight)
                            //.shadow(color: .gray, radius: 5, x:8, y:8)
                            
                            HStack{
                                Spacer()
                                    .frame(width:15)
                                
                                Image("laccetti")
                                    .resizable()
                                    .frame(width: 80, height:100)
                                    .mask(Circle())
                                    .shadow(color: .gray, radius: 5)
                                
                                Spacer()
                                    .frame(width:15)
                                
                                Text("Nome Cognome")
                                
                            }
                        }
                        
                    }//Vstack
                }//zstack
            }//scroll
            
            .navigationTitle("Docenti")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}){
                        Label("Profile", systemImage: "person.circle")
                    }
                }
            }
            .searchable(text: $searchText)
        }//Nstack
    }
}

struct ProfView_Previews: PreviewProvider {
    static var previews: some View {
        ProfView()
    }
}
