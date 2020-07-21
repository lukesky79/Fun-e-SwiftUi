//
//  DeckMathView.swift
//  App
//
//  Created by Le Rouzo Celine on 06/07/2020.
//  Copyright © 2020 Le Rouzo Celine. All rights reserved.
//

import SwiftUI



struct QCMMathView: View {
    
    //   var matiere: ThemeMatiere
    
    var body: some View {
        
        
        
        
        VStack {
            
            
            ForEach(ThemeMatiere.allCases) { currentTheme in
                
                NavigationLink(destination: ThemeDecksView(someTheme: currentTheme)){
                    
                    Text(currentTheme.matieresMath).font(.custom("Chewy", size: 35)).edgesIgnoringSafeArea(.all).frame(width: 250, height: 90) .foregroundColor(Color.black).multilineTextAlignment(.leading)
                        .padding().background(backGroundColor2).cornerRadius(10.0)
                }
            }
        }.padding(70)
            .background(backGroundColor1).navigationBarTitle("Math")
    }
}
struct QCMMathView_Previews: PreviewProvider {
    static var previews: some View {
        QCMMathView()
    }
}





/*
 
 import SwiftUI
 
 struct ContentView2: View {
 
 var body: some View {
 
 NavigationView {
 VStack {
 ScrollView {
 ForEach(ThemeMatiere.allCases) { currentTheme in
 
 DeckMathView(theme: currentTheme)
 
 
 }.background(Color.blue)
 
 }
 .navigationBarTitle(barTitle)
 }.padding(0.0)
 }
 }
 
 }
 struct DeckMathView: View {
 
 var body: some View {
 
 var matiere: ThemeMatiere
 
 ZStack {
 
 Color.red
 
 VStack {
 
 Text(matiere.matieresMath)
 .fontWeight(.bold)
 
 Spacer()
 
 NavigationLink(destination: HamidView()){
 
 Text("Matières").fontWeight(.bold).foregroundColor(.white)
 }
 }
 }
 }
 }
 
 struct ContentView2_Previews: PreviewProvider {
 static var previews: some View {
 ContentView2()
 }
 }
 */
