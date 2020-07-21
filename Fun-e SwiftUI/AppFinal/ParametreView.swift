//
//  ParametresView.swift
//  Fun e parametres
//
//  Created by CISSE Malik on 03/07/2020.
//  Copyright © 2020 Cisse Malik. All rights reserved.
//

import SwiftUI

struct ParametresView: View {
    @State private var notifOn: Bool = false
    @State private var SonsOn: Bool = false
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
                VStack{
                    
                    NavigationLink(destination: CompteView()) {
                        Options(image: "person.crop.circle.fill", name: "Compte")}
                    Divider()
                    HStack{
                        Image(systemName: "message.circle").font(.system(size: 35))
                        Toggle(isOn: $notifOn){
                            Text(" Notifications")
                        }
                    }.padding().font(.custom("bold", size: 25)).accentColor(.black)
                    Divider()
                    HStack{
                        Image(systemName: "speaker.3.fill")
                        Toggle(isOn: $SonsOn){
                            Text(" Sons")
                        }
                    }.padding().font(.custom("bold", size: 25)).accentColor(.black)
                    Divider()
                    NavigationLink(destination: AboutUsView()){Options(image: "info.circle.fill", name: "à propos de nous")}
                }
                }.navigationBarTitle("Paramètres")
        }.accentColor(.black)
    }
}

struct Options : View{
    var image = ""
    var name = ""
    var body: some View{
        HStack(spacing: 15){
            Image(systemName: image).font(.system(size: 30))
            Text(name).foregroundColor(.black)
            Spacer()
            Image(systemName: "chevron.right").frame(width: 30, height: 30)
            
        }.padding().font(.custom("bold", size: 25)).accentColor(.black)
        
        
    }
}

struct ParametresView_Previews: PreviewProvider {
    static var previews: some View {
        ParametresView()
    }
}


//options design
//.padding().font(.custom("Noteworthy", size: 25)).background(Color.purple.cornerRadius(40)).accentColor(.black)

//notifs et sons design
//.padding().font(.custom("Noteworthy", size: 25)).background(Color.purple.cornerRadius(40)).accentColor(.black)
//
