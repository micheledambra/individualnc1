//
//  Dashboard.swift
//  individualnc1
//
//  Created by Michele D'Ambra on 22/11/22.
//

import SwiftUI

struct Dashboard: View {
    
    var corner: CGFloat = 10
    var topcardh: CGFloat = 165
    var topcardw: CGFloat = 165
    var body: some View {
        
        ZStack(alignment: .top){
            LinearGradient(colors: [Color("BlueUni"), Color("BlueUni2")],
                           startPoint: .top,
                           endPoint: .center)
            .ignoresSafeArea()
            
            VStack{
                Spacer()
                    .frame(height: 30)
                
                HStack{
                    ZStack {
                        RoundedRectangle(cornerRadius: corner)
                            .foregroundColor(Color.white)
                            .frame(width: topcardw, height: topcardh)
                            .opacity(0.5)
                            .shadow(color: .black, radius: 6, x:6, y:6)
                        VStack{
                            //
                        }
                    }
                    
                    Spacer()
                        .frame(width: 16)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: corner)
                            .foregroundColor(Color.white)
                            .frame(width: topcardw, height: topcardh)
                            .opacity(0.5)
                            .shadow(color: .black, radius: 6, x:6, y:6)
                        VStack{
                            Image("CoursesPic")
                                .resizable()
                                .frame(width: 100, height:100)
                            Text("Lessons")
                                .fontWeight(.semibold)
                                .font(.system(size: 25))
                            
                            
                        }
                    }
                    
                }//hstack
                
                Spacer()
                    .frame(height: 16)
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: corner)
                        .foregroundColor(Color.white)
                        .frame(width: 346, height: 300)
                        .opacity(0.5)
                        .shadow(color: .black, radius: 6, x:6, y:6)
                    
                    VStack{
                        //
                    }
                }
                
            }//vstack
        }//zstack
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
