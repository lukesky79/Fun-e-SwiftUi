
//  RepondreQcm.swift
//  AjoutQCMDeux
//
//  Created by Lee-Roy Nadjar on 03/07/2020.
//  Copyright © 2020 Lee-Roy Nadjar. All rights reserved.
//

import SwiftUI

struct BoutonReponse: View {
    var reponse : Reponse
    @Binding var internalPopVrai : Bool
    @Binding var internalPopFaux : Bool
    var body: some View {
        Button(action: {
            if self.reponse.isValid == true {
                self.internalPopVrai = true
            }
            else {
                
                self.internalPopFaux = true
            }
        }) {
            HStack {
                Image(systemName: "r.circle")
                Text(reponse.value)
                
            } }
            .buttonStyle(GradientButtonStyle())
            .padding()
    }
}



struct RepondreView : View {
    @State private var popFaux : Bool = false
    @State private var popVrai : Bool = false
    @State private var indexQuestion : Int  = 0
    var couleur : Color = .green
    var qcm : QCM = qcm1
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
                
                .edgesIgnoringSafeArea(.all)
                .statusBar(hidden: false)
            
            
            VStack{
                HStack {
                    
                    
                    Text(qcm.questions[indexQuestion].enonce)
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.black)
                        .cornerRadius(15.0)
                    
                }
                BoutonReponse(reponse: qcm.questions[indexQuestion].reponses[0], internalPopVrai: $popVrai, internalPopFaux: $popFaux)
                
                BoutonReponse(reponse: qcm.questions[indexQuestion].reponses[1], internalPopVrai: $popVrai, internalPopFaux: $popFaux)
                
                BoutonReponse(reponse: qcm.questions[indexQuestion].reponses[2], internalPopVrai: $popVrai, internalPopFaux: $popFaux)
                
                BoutonReponse(reponse: qcm.questions[indexQuestion].reponses[3], internalPopVrai: $popVrai, internalPopFaux: $popFaux)
            }
            if $popFaux.wrappedValue {
                ZStack {
                    Color.white
                    VStack {
                        Text("Mauvaise Réponse")
                            .font(.title)
                            
                        Image(systemName: "x.circle.fill")
                            .font(.title)
                            .foregroundColor(.red)
                        Spacer()
                        Button(action: {
                            self.popFaux = false
                        }, label: {
                            Text("Close")
                        })
                    }.padding()
                }
                .frame(width: 300, height: 200)
                .cornerRadius(20).shadow(radius: 20)
            }
            if $popVrai.wrappedValue {
                ZStack {
                    Color.white
                    VStack {
                        Text("Bonne Réponse")
                        .font(.title)
                        Image(systemName: "checkmark.circle.fill")
                            .font(.title)
                            .foregroundColor(.green)
                        Spacer()
                        Button(action: {
                            self.popVrai = false
                            if     self.indexQuestion < self.qcm.questions.count-1 {
                                self.indexQuestion += 1 }
                            else {
                                
                                
                                
                                
                            }
                            
                        },  label: {
                            Text("Close")
                        })
                    }.padding()
                }
                .frame(width: 300, height: 200)
                .cornerRadius(20).shadow(radius: 20)
            }
            
            
            
        }
        
        
        
        
    }
}

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white)
            .padding()
            
            .cornerRadius(15.0)
            .background(configuration.isPressed ? Color.green : Color.black) } }



struct RepondreView_Previews: PreviewProvider {
    static var previews: some View {
        RepondreView()
    }
}

/* struct RepondreQcm: View {
    @State private var pop : Bool = false
    @State private var popVrai : Bool = false
    var couleur : Color = .green
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
                
                .edgesIgnoringSafeArea(.all)
                .statusBar(hidden: false)
            
            
            VStack{
                HStack {
                    
                    
                    Text("Question :")
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.black)
                        .cornerRadius(15.0)
                    
     
                }
                Button(action: {
                    self.popVrai = true
                }) {
                    HStack {
                        Image(systemName: "a.circle")
                        Text("Bonne Réponse")
                        
                        
                    }
                }.buttonStyle(GradientButtonStyle())
                    .padding()
                
                Button(action: {
                    self.pop = true
                }) {
                    HStack {
                        Image(systemName: "b.circle")
                        Text("Mauvaise Réponse")
                        
                    } }
                    .buttonStyle(GradientButtonStyle())
                    .padding()
                //```swift
                Button(action: {
                    self.pop = true
                }) {
                    HStack {
                        Image(systemName: "c.circle")
                        Text("Mauvaise Réponse")
                    } }
                    .buttonStyle(GradientButtonStyle())
                    .padding()
                
                Button(action: {
                    self.pop = true
                }) {
                    HStack {
                        Image(systemName: "d.circle")
                        Text("Mauvaise Réponse")
                    } }
                    .buttonStyle(GradientButtonStyle())
                    .padding()
            }
            if $pop.wrappedValue {
                ZStack {
                    Color.white
                    VStack {
                        Text("Mauvaise Réponse")
                        Spacer()
                        Button(action: {
                            self.pop = false
                        }, label: {
                            Text("Close")
                        })
                    }.padding()
                }
                .frame(width: 300, height: 200)
                .cornerRadius(20).shadow(radius: 20)
            }
            if $popVrai.wrappedValue {
                ZStack {
                    Color.white
                    VStack {
                        Text("Bravo tu as trouvé la bonne réponse")
                        Spacer()
                        Button(action: {
                            self.popVrai = false
                        },  label: {
                            Text("Close")
                        })
                    }.padding()
                }
                .frame(width: 300, height: 200)
                .cornerRadius(20).shadow(radius: 20)
            }
     
        }
           
    }
}

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white)
            .padding()
            
            .cornerRadius(15.0)
            .background(configuration.isPressed ? Color.green : Color.black) } }


struct RepondreQcm_Previews: PreviewProvider {
    static var previews: some View {
        RepondreQcm()
    }
}

*/
