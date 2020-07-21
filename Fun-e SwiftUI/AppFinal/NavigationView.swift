//
//  NavigationView.swift
//  AppFinal
//
//  Created by Le Rouzo Celine on 07/07/2020.
//  Copyright © 2020 Le Rouzo Celine. All rights reserved.
//

import SwiftUI

struct NavigationVue: View {
    
   
        
        var body: some View {
            
        
        TabView {
            

            
            ContentView()
         
                .tabItem {
                    Image(systemName: "book.circle").frame(width: 100, height: 100).font(.system(size: 35))
                    Text("Bureau")
            }
            KhangView()
                
                .tabItem {
                    Image(systemName: "chart.pie.fill").font(.system(size: 30))
                    Text("Statistiques")
            }
            ParametresView()
                
                .tabItem {
                    Image(systemName: "slider.horizontal.3").font(.system(size: 30))
                    Text("Paramètres")
            }
        }
    }
}

struct NavigationVue_Previews: PreviewProvider {
    static var previews: some View {
        NavigationVue()
    }
}

