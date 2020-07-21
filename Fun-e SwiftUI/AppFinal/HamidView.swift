//
//  ThemeDecksView.swift
//  ListForm
//
//  Created by HamidGACI on 07/07/2020.
//  Copyright © 2020 HamidGACI. All rights reserved.
//


 import SwiftUI
/*
 struct ThemeDecksView: View {
     
     
     
     @State var someTheme: ThemeMatiere
     let matiereTheme: QCM = qcm1
     
     @State private var showQCMSheet = false
     
     var body: some View {
         VStack {
             
 //            Text("Fun e")
  //               .font(.largeTitle)
    //             .fontWeight(.bold)
    //           .foregroundColor(Color.purple)
  
             List {
                 ForEach(getQcmsFromTotalQCM(themeMatiere: self.someTheme)) { sujet in
                    NavigationLink(destination: RepondreView()) {
                        
                         ListRowView(qcm: sujet)
                     }.buttonStyle(PlainButtonStyle())
                     
                 }
             }
             
         }
         .navigationBarTitle(Text(" \(matiereTheme.themeMatiere.rawValue)").font(.title).fontWeight(.bold))
             .navigationBarItems(trailing:
             
             Button(action: {
             
             self.showQCMSheet.toggle()
            
         }, label: {
             Image(systemName: "plus.square.fill").accentColor(.red).font(.system(size: 30))
         }))
         .sheet(isPresented: $showQCMSheet, content: {
             LeeRoyView2(qcmSheet: self.$showQCMSheet)
         })
     }
     
 }

 struct ListRowView: View {
     var qcm : QCM
     let backGroundColor =  LinearGradient(gradient: Gradient(colors: [.blue, .white,]), startPoint: .top, endPoint: .bottom)
     var body: some View {
         VStack (alignment: .leading) {
             Text("QCM numéro: \(qcm.id)")
             Text(qcm.name).font(.title)
         }.listRowBackground(backGroundColor)
     }
     
 }

 struct ThemeDecksView_Previews: PreviewProvider {
     static var previews: some View {
         ThemeDecksView(someTheme: ThemeMatiere.algèbre)
     }
 }

 
*/
