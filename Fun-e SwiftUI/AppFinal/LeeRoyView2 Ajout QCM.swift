//
//  AjoutQcm.swift
//  AjoutQCMDeux
//
//  Created by Lee-Roy Nadjar on 06/07/2020.
//  Copyright © 2020 Lee-Roy Nadjar. All rights reserved.
//

import SwiftUI

struct LeeRoyView2: View {
    @State private var question = ""
    @State private var reponseUn = ""
    @State private var reponseDeux = ""
    @State private var reponseTrois = ""
    @State private var reponseQuatre = ""
   @State private var qcmAjout : QCM?
    @Binding var qcmSheet: Bool
    
    var body: some View {
        
       
        ZStack {
                      
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
                .statusBar(hidden: false)
                .edgesIgnoringSafeArea(.all)
           
            
            VStack(spacing: 15.0) {
                
                //     NavigationView{
             //       NavigationLink(destination: RepondreView(), label:{ Text("appuye la !!!")})
           //     }
               
                Text("Question : ")
                TextField("Remplir le champ...", text: $question)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    .padding()
                Text("Réponse :")
                TextField("Bonne Réponse", text: $reponseUn)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("Mauvaise Réponse", text: $reponseDeux)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("Mauvaise Réponse", text: $reponseTrois)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("Mauvaise Réponse", text: $reponseQuatre)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                
                Button(action: {
                    self.qcmSheet.toggle()
                    
                    self.saveQCM()
                
                   
                }
                    , label: {  Text("Ajouter") } )
                    
                    .padding()
                    .foregroundColor(.black)
                    .background(Color.white)
                    
                    
                    .border(Color.blue, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                
                
                
            }
            
            
        }
    }
   
   func saveQCM() {
       // Instancier un QCM avec les paramètres choisis / entrés
    let qcmAjout : QCM = QCM(id: 01, questions: [Question(enonce: self.question, isMultipleChoice: false, reponses: [Reponse(value: self.reponseUn, isValid: true), Reponse(value: self.reponseDeux, isValid: false), Reponse(value: self.reponseTrois, isValid: false), Reponse(value: self.reponseQuatre, isValid: false)])], theme: .maths, themeMatiere: .algèbre, whoseDeck: .myDeck, name: "myfirstQCM")
    
    totalQCM.append(qcmAjout)
    
       
   }
}


struct LeeRoyView2_Previews: PreviewProvider {
    static var previews: some View {
        LeeRoyView2(qcmSheet: .constant(false))
        
    }
}
