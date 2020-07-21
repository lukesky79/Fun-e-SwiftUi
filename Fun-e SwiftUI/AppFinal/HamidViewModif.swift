//
//  HamidViewModif.swift
//  AppFinal
//
//  Created by Le Rouzo Celine on 08/07/2020.
//  Copyright © 2020 Le Rouzo Celine. All rights reserved.
//


import SwiftUI

struct ThemeDecksView: View {
    
    
    
    @State var someTheme: ThemeMatiere
    let matiereTheme: QCM = qcm1
    
    @State private var showQCMSheet = false
    
    var body: some View {
        
        ScrollView {
            
            ZStack {
                backGroundColor1
                VStack (alignment: .leading,spacing: 20) {
            
            //            Text("Fun e")
            //               .font(.largeTitle)
            //             .fontWeight(.bold)
            //               .foregroundColor(Color.purple)
            
            
                
            ForEach(getQcmsFromTotalQCM(themeMatiere:
                
                self.someTheme)) { sujet in
                    
                    NavigationLink(destination:
                        
                    RepondreView()) {
                        
                        ListRowView(qcm: sujet)
                     .foregroundColor(Color.black)
                            .cornerRadius(10.0)
                    }
                    
                    .buttonStyle(PlainButtonStyle())
                  
                }
                }.padding(.top).padding(.bottom)
        }
        }
      //  .frame(width: 300, height: 550).background(backGroundColor1)
        .navigationBarTitle(Text(" \(matiereTheme.themeMatiere.rawValue)").font(.largeTitle).fontWeight(.light))
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
        
        VStack (alignment: .center) {
            
            Text("QCM numéro: \(qcm.id)").underline()
              
            
            Text(qcm.name).font(.custom("Chewy", size: 25)).bold()
            
        }.frame(width: 300, height: 90 ).background(backGroundColor2)
        
    }
    
}

struct ThemeDecksView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeDecksView(someTheme: ThemeMatiere.algèbre)
    }
}

