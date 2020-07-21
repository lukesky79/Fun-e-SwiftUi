//
//  AboutUsView.swift
//  Fun e parametres
//
//  Created by CISSE Malik on 03/07/2020.
//  Copyright © 2020 Cisse Malik. All rights reserved.
//

import SwiftUI

struct AboutUsView: View {
    init(){
        UITableView.appearance().backgroundColor = .clear
    }
    var body: some View {
        ZStack{
        LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
            VStack(alignment: .center){
                Spacer(minLength: (200))
                Form{
                    Section(header: Text("À propos de l'application").foregroundColor(.black).font(.headline)) {
                        FormRawView(firstItem: "Application", secondItem: "FUN-E")
                        FormRawView(firstItem: "Platform", secondItem: "iPhone, iPad, Mac")
                        FormRawView(firstItem: "Developer", secondItem: "Malik Hamid Celine Khang Lee-Roy Fabrice")
                        FormRawView(firstItem: "Website", secondItem: "www.FUN-E.com")
                        FormRawView(firstItem: "Copyright", secondItem: "@2020 Tous droits réservés")
                        FormRawView(firstItem: "Version", secondItem: "1.0.0")
                    }
                }
            }
        }.navigationBarTitle("FUN-e")
    }
}

struct FormRawView: View{
    var firstItem: String
    var secondItem: String
    
    var body: some View {
        HStack{
        Text(firstItem).foregroundColor(.gray)
        Spacer()
        Text(secondItem)
        }
    }
}




struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}
