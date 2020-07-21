//
//  ContentView.swift
//  StatSemaine
//
//  Created by Khang Nguyen on 02/07/2020.
//  Copyright © 2020 Khang Nguyen. All rights reserved.
//

import SwiftUI

struct KhangView: View {
    @State private var momentDay = 1
    @State private var DataToggle1: [[CGFloat]] = [
        
        [12, 15, 25, 10, 5, 33, 21],
        [51, 25, 30, 14, 14, 26, 32],
        [23, 59, 23, 21, 56, 45, 13]
    ]
    
    @State private var DataToggle2: [[CGFloat]] = [
        
        [22, 15, 25, 10, 5, 13, 21],
        [31, 15, 30, 41, 34, 69, 68],
        [68, 49, 56, 76, 66, 69, 45]
        
    ]
    
    var body: some View {
        NavigationView {
            
            
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
                         
            VStack {
      
                Picker(selection: $momentDay, label: Text("")) {
                    Text("Semaine 1").tag(0)
                    Text("Semaine 2").tag(1)
                    Text("Semaine 3").tag(2)
              
                }.pickerStyle(SegmentedPickerStyle())
                   .padding(.horizontal, 50)
              
                HStack (spacing: 18) {
                    Text("% Reussite")
                        .fontWeight(.bold)
                    
                    DiagramFactorise(nbReussite: DataToggle1[momentDay][0])
                    DiagramFactorise(nbReussite: DataToggle1[momentDay][1])
                    DiagramFactorise(nbReussite: DataToggle1[momentDay][2])
                    DiagramFactorise(nbReussite: DataToggle1[momentDay][3])
                    DiagramFactorise(nbReussite: DataToggle1[momentDay][4])
                    DiagramFactorise(nbReussite: DataToggle1[momentDay][5])
                    DiagramFactorise(nbReussite: DataToggle1[momentDay][6])
                    
                }
                HStack {
                    
                    Text("                        L      M      M      J      V      S      D")
                        .fontWeight(.bold)
                        .frame(width: 400, height: 550)
                }
                .padding(.top, 23.0)
                .animation(.default)
                
            }
            HStack (spacing: 18) {
                Text("Durée         ")
                    .fontWeight(.bold)
                DiagramFactorise(nbReussite: DataToggle2[momentDay][0])
                DiagramFactorise(nbReussite: DataToggle2[momentDay][1])
                DiagramFactorise(nbReussite: DataToggle2[momentDay][2])
                DiagramFactorise(nbReussite: DataToggle2[momentDay][3])
                DiagramFactorise(nbReussite: DataToggle2[momentDay][4])
                DiagramFactorise(nbReussite: DataToggle2[momentDay][5])
                DiagramFactorise(nbReussite: DataToggle2[momentDay][6])
                }
                
          
        }.navigationBarTitle("Statistiques").padding(.bottom, -200)
    }
    }
}
    struct DiagramFactorise: View {
        
        var nbReussite: CGFloat
        
        
        var body: some View {
            VStack {
                ZStack (alignment: .bottom) {
                    Capsule().frame(width: 20, height: 100)
                    Capsule().frame(width: 20, height:nbReussite)
                        .foregroundColor(.purple)
                    
                }
                Text("")
                    .fontWeight(.bold)
             
            }
        }
    }


struct KhangView_Previews: PreviewProvider {
    static var previews: some View {
        //NavigationView{
        KhangView()
        
    }
    
}


