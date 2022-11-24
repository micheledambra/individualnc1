//
//  Dashboard.swift
//  individualnc1
//
//  Created by Michele D'Ambra on 22/11/22.
//

import SwiftUI

struct Dashboard: View {
    
    var corner: CGFloat = 10
    var topcardh: CGFloat = 135
    var topcardw: CGFloat = 165
    var prof: Bool = false
    let progress: Double = 0.55
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
                                            .frame(width: 70, height:70)
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
                                        .frame(width: 70, height: 70)
                                    Text("Lessons")
                                        .fontWeight(.semibold)
                                        .font(.system(size: 20))
                                        .foregroundColor(Color.black)
                                    
                                    
                                }
                            }
                        }) //button
                    }//hstack
                    
                    Spacer()
                        .frame(height: 15)
                    
                    ZStack(alignment: .leading) {
                        
                        RoundedRectangle(cornerRadius: corner)
                            .foregroundColor(Color.white)
                            .frame(width: 346, height: 240)
                            .opacity(0.8)
                            .shadow(color: .black, radius: 6, x:6, y:6)
                            
                        
                        VStack(alignment: .leading){
                            HStack {
                                Spacer()
                                .frame(width: 20)
                                Text("Grades")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 20))
                                .foregroundColor(Color.black)
                                
                            }
                            
                            Spacer()
                                .frame(height: 20)
                            
                            HStack {
                                Spacer()
                                    .frame(width: 45)
                                ZStack {
                                            Circle()
                                                .stroke(
                                                    Color.blue.opacity(0.5),
                                                    lineWidth: 30
                                                )
                                            Circle()
                                                // 2
                                                .trim(from: 0, to: progress)
                                                .stroke(
                                                    Color.blue,
                                                    style: StrokeStyle(
                                                        lineWidth: 30,
                                                        lineCap: .round
                                                    )
                                                )
                                                .rotationEffect(.degrees(-90))
                                    VStack {
                                        Text("Exams done")
                                            .fontWeight(.semibold)
                                        .font(.system(size: 14))
                                    .foregroundColor(Color.black)
                                        Text("55%")
                                            .fontWeight(.bold)
                                            .font(.system(size: 30))
                                        .foregroundColor(Color.black)
                                    }
                                    
                                }.frame(width: 145)
                                
                                Spacer()
                                    .frame(width: 40)
                                VStack(alignment: .leading){
                                    Text("Average")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                        .foregroundColor(Color.black)
                                    
                                    Text("A: 28.7/30 ")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                        .foregroundColor(Color.black)
                                        .opacity(0.7)
                                    
                                    Text("P: 105.9/110 ")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                        .foregroundColor(Color.black)
                                        .opacity(0.7)
                                    
                                    
                                }
                                
                            }
                        }
                        
                    }
                    
                    Spacer()
                        .frame(height: 15)
                    
                    ZStack {//NEWS
                        
                        RoundedRectangle(cornerRadius: corner)
                            .foregroundColor(Color.white)
                            .frame(width: 346, height: 200)
                            .opacity(0.8)
                            .shadow(color: .black, radius: 6, x:6, y:6)
                            
                        
                        VStack(alignment: .trailing){
                            
                            HStack {
                                Text("News")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.black)
                                Spacer()
                                    .frame(width: 250)
                                }
                           
                            Spacer()
                                .frame(height:16)
                            
                            HStack{
                                Circle()
                                    .frame(height: 10)
                                    .foregroundColor(Color.red)
                                    .opacity(0.7)
                                Text("[Prog I]")
                                    .fontWeight(.bold)
                                    .font(.system(size: 18))
                                    .foregroundColor(Color.black)
                                
                                Text("25/11: La lezione di oggi..")
                                    .fontWeight(.bold)
                                    .font(.system(size: 15))
                                    .foregroundColor(Color.black)
                                    .opacity(0.7)
                                
                                Spacer()
                                    .frame(width:25)
                            }
                            
                            HStack{
                                Circle()
                                    .frame(height: 10)
                                    .foregroundColor(Color.teal)
                                    .opacity(0.7)
                                Text("[Reti I]")
                                    .fontWeight(.bold)
                                    .font(.system(size: 18))
                                    .foregroundColor(Color.black)
                                
                                Text("25/11: Risultati esame del ..")
                                    .fontWeight(.bold)
                                    .font(.system(size: 15))
                                    .foregroundColor(Color.black)
                                    .opacity(0.7)
                                
                                Spacer()
                                    .frame(width:15)
                            }
                            
                            HStack{
                                Circle()
                                    .frame(height: 10)
                                    .foregroundColor(Color.teal)
                                    .opacity(0.7)
                                Text("[CF]")
                                    .fontWeight(.bold)
                                    .font(.system(size: 18))
                                    .foregroundColor(Color.black)
                                
                                Text("24/11: Posticipo test di autov..")
                                    .fontWeight(.bold)
                                    .font(.system(size: 15))
                                    .foregroundColor(Color.black)
                                    .opacity(0.7)
                                
                                Spacer()
                                    .frame(width:15)
                            }
                            HStack{
                                Circle()
                                    .frame(height: 10)
                                    .foregroundColor(Color.teal)
                                    .opacity(0.7)
                                Text("[LSO]")
                                    .fontWeight(.bold)
                                    .font(.system(size: 18))
                                    .foregroundColor(Color.black)
                                
                                Text("23/11: Risultati esame del gi..")
                                    .fontWeight(.bold)
                                    .font(.system(size: 15))
                                    .foregroundColor(Color.black)
                                    .opacity(0.7)
                                
                                Spacer()
                                    .frame(width:8)
                            }
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
