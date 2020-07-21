//
//  Fabrice2View.swift
//  App
//
//  Created by Le Rouzo Celine on 06/07/2020.
//  Copyright © 2020 Le Rouzo Celine. All rights reserved.
//

import SwiftUI

struct FabriceView: View {
    
    var body: some View {
        
        VStack {
            NavigationView {
                ZStack {
                    VStack {
                        
                        LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
                            
                            .edgesIgnoringSafeArea(.all)
                            .statusBar(hidden: false)
                        Text("Thèmes :")
                        
                        
                        
                        
                    }
                    .navigationBarTitle("Suggestions")
                    Text("🧞 Sélection de la semaine ")
                    
                }
            }
            List {
                
                NavigationLink(destination: RepondreView()){ Text("🧮 Maths") }
                NavigationLink(destination: RepondreView()){ Text("👩‍🔬 Physique / Chimie ") }
                NavigationLink(destination: RepondreView()){ Text("🌎 Histoire / Géographie") }
                NavigationLink(destination: RepondreView()){ Text("🗣 Langues") }
                NavigationLink(destination: RepondreView()){  Text("🚀 Astronomie") }
                NavigationLink(destination: RepondreView()){ Text("🎶 Musique") }
                NavigationLink(destination: RepondreView()){ Text("👨🏿‍💻 Informatique") }
                NavigationLink(destination: RepondreView()){ Text("🎮 Divertissement") }
                NavigationLink(destination: RepondreView()){ Text("⛹🏽 Sport") }
                NavigationLink(destination: RepondreView()){ Text("🥘 Gastronomie") }
                
            }
        }
    }
}



struct FabriceView_Previews: PreviewProvider {
    static var previews: some View {
        FabriceView()
    }
}
