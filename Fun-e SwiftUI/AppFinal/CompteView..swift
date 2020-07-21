//
//  CompteView.swift
//  Fun e parametres
//
//  Created by CISSE Malik on 03/07/2020.
//  Copyright © 2020 Cisse Malik. All rights reserved.
//

import SwiftUI
let lightGreyColor = Color(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0)

let storedUsername: String = "FUN-E"
let storedPassword:String = "1234"

struct CompteView: View {
    @State var username: String = ""
    @State var password:String = ""
    
    @State var authentificationReussie: Bool = false
    @State var authentificationRate: Bool = false
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
            VStack{
               
                UserImage()
                PseudonymeTexte(username: $username)
                MotDePasseTexte(password: $password)
                if authentificationRate{
                    Text("Informations incorrectes. Veuillez réessayer")
                    .offset(y: -10)
                    .foregroundColor(.red)
                }
                
                Button(action: {
                if self.username == storedUsername && self.password == storedPassword {
                    self.authentificationReussie = true
                    self.authentificationRate = false
                } else {
                    self.authentificationRate = true
                    self.authentificationReussie = false
                } }) {
                Login()
                }
            }.padding()
            if authentificationReussie {
            Text("Vous êtes connecté.")
                .font(.headline)
                .frame(width: 250, height: 80)
                .background(Color.yellow)
                .cornerRadius(20.0)
                .animation(Animation.default)
            }
        }.navigationBarTitle("Bienvenue sur FUN-e")
    }
}

struct Profil {
    var pseudonyme: String
    var email: String
    
    
}
struct CompteView_Previews: PreviewProvider {
    static var previews: some View {
        CompteView()
    }
}


//Image("image-inconnu").clipShape(Circle()).shadow(radius: 10).overlay(Circle().stroke(Color.gray, lineWidth: 5))

struct Bienvenue: View {
    var body: some View {
        Text("Bienvenue sur FUN-E").font(.largeTitle).fontWeight(.bold).padding(.bottom,20.0)
    }
}

struct UserImage: View {
    var body: some View {
        Image("image-inconnu").clipShape(Circle()).shadow(radius: 10).overlay(Circle().stroke(Color.gray, lineWidth: 5)).padding(.bottom,75)
    }
}

struct Login: View {
    var body: some View {
        Text("Se connecter").font(.headline).foregroundColor(.white).padding().frame(width: 220, height: 60).background(Color.black).cornerRadius(50.0)
    }
}

struct PseudonymeTexte: View {
    @Binding var username: String
    var body: some View {
        TextField("Pseudonyme", text: $username).padding().background(lightGreyColor).cornerRadius(5.0).padding(.bottom, 20)
    }
}

struct MotDePasseTexte: View {
    @Binding var password: String
    var body: some View {
        SecureField("mot de passe", text: $password).padding().background(lightGreyColor).cornerRadius(5.0).padding(.bottom, 20)
    }
}
