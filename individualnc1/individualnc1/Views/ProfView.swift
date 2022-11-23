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
        
        // let cardWidth: CGFloat = 365
        // let cardHeight: CGFloat = 110
        //   let Radius: CGFloat = 10
        
        
        ZStack(alignment: .top){
            LinearGradient(colors: [Color("BlueUni"), Color("BlueUni2")],
                           startPoint: .top,
                           endPoint: .center)
            .ignoresSafeArea()
            
            VStack{
                ZStack(alignment: .topLeading) {
                    RoundedRectangle(cornerRadius: 40, style: .continuous)
                        .foregroundColor(Color.white)
                        .frame(width: .infinity, height: 125)
                        .opacity(0.8)
                        .shadow(color: .black, radius: 6, x:6, y:6)
                        .ignoresSafeArea()
                    
                    VStack {
                        Spacer()
                            .frame(height: 50)
                        
                        HStack {
                            Spacer()
                                .frame(width:100)
                            Image("GraduationHat")
                                .resizable()
                                .frame(width: 50, height:50)
                            
                            Spacer()
                                .frame(width:5)
                            
                            Text("MyUNI")
                                .fontWeight(.bold)
                                .font(.system(size: 40))
                                .foregroundColor(Color.black)
                            
                            Spacer()
                                .frame(width:45)
                            
                            Button(action: { }, label: {
                                Image(systemName: "person.circle.fill")
                                    .resizable()
                                    .frame(width: 35, height: 35)
                                    .foregroundColor(Color.black)
                            })
                            
                            
                        }
                    }
                    .ignoresSafeArea()
                }
                
            }
            
        }
    }
}

struct ProfView_Previews: PreviewProvider {
    static var previews: some View {
        ProfView()
    }
}
