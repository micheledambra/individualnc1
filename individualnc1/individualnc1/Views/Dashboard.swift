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
    var prof: Bool = false
    var body: some View {
        
        NavigationStack {
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
                                .frame(height: 3)
                            
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
                        
                        
                        
                    }
                    
                    
                    Spacer()
                        .frame(height: 5)
                    
                    HStack{
                        NavigationLink(destination: ProfView()) {
                            //Button(action: { }, label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: corner)
                                        .foregroundColor(Color.white)
                                        .frame(width: topcardw, height: topcardh)
                                        .opacity(0.8)
                                        .shadow(color: .black, radius: 6, x:6, y:6)
                                    VStack{
                                        Image("TeacherPic")
                                            .resizable()
                                            .frame(width: 50, height:50)
                                        Text("Professors")
                                            .fontWeight(.semibold)
                                            .font(.system(size: 20))
                                            .foregroundColor(Color.black)
                                    }
                                }
                           // })
                        }
                        
                        Spacer()
                            .frame(width: 16)
                        
                        Button(action: { }, label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: corner)
                                    .foregroundColor(Color.white)
                                    .frame(width: topcardw, height: topcardh)
                                    .opacity(0.8)
                                    .shadow(color: .black, radius: 6, x:6, y:6)
                                VStack{
                                    Image("CoursesPic")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                    Text("Lessons")
                                        .fontWeight(.semibold)
                                        .font(.system(size: 20))
                                        .foregroundColor(Color.black)
                                    
                                    
                                }
                            }
                        }) //button
                    }//hstack
                    
                    Spacer()
                        .frame(height: 16)
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: corner)
                            .foregroundColor(Color.white)
                            .frame(width: 346, height: 300)
                            .opacity(0.8)
                            .shadow(color: .black, radius: 6, x:6, y:6)
                            
                        
                        VStack{
                            //
                        }
                    }
                    
                }//vstack
            }
        }//zstack
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
