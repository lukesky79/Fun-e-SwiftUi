//
//  Question.swift
//  App
//
//  Created by Le Rouzo Celine on 01/07/2020.
//  Copyright © 2020 Le Rouzo Celine. All rights reserved.
//

import Foundation
import SwiftUI

let backGroundColor1 =  LinearGradient(gradient: Gradient(colors: [.init(#colorLiteral(red: 0, green: 0.468669951, blue: 0.9777725339, alpha: 1)), .init(#colorLiteral(red: 0.5719668865, green: 0.8957708478, blue: 0.9530342221, alpha: 1))]), startPoint: .top, endPoint: .bottom)
let backGroundColor2 =  LinearGradient(gradient: Gradient(colors: [.init(#colorLiteral(red: 0.7244777083, green: 0.3695150018, blue: 0.8801568151, alpha: 1)), .init(#colorLiteral(red: 0.809356153, green: 0.6394924521, blue: 0.8682075739, alpha: 1))]), startPoint: .top, endPoint: .bottom)

// Declaration liste des Themes
enum Theme : String, Identifiable, CaseIterable {
    
    var id: String { UUID().uuidString }
    case maths
    case bio
    case physique
    case chimie
    case histoire
    case géo
    case francais
    case anglais
    case espagnol
    case russe
    case chinois
    case astronomie
    case musique
    case swift
    case python
    case c
 //   case solfege

    // Declaration des noms de themes  affichés dans l'app
    var themeName : String {
        
        switch self {
            
        case .maths:
            return "Math"
        case .bio:
            return "Biologie"
        case .physique:
            return "Physique"
        case .chimie:
            return "Chimie"
        case .histoire:
            return "Histoire"
        case .géo:
            return "Géographie"
        case .francais:
            return "Français"
        case .anglais:
            return "Anglais"
        case .espagnol:
            return "Espagnol"
        case .russe:
            return "Russe"
        case .chinois:
            return "Chinois"
        case .astronomie:
            return "Astronomie"
        case .musique:
            return "musique"
        case .swift:
            return "swift"
        case .python:
            return "python"
        case .c:
            return "C+"
  //      case .solfege:
//         return "Solfege"

        }
    }

    // Declaration des images associées aux Themes
/*    var imageName : String {
        switch self {
        case .maths:
            return "imageMaths"  //. car on fait appel à imageMaths(image nommée "imageMaths")
        case .bio:
            return "imageBiologie"
        case .physique:
            return "imagePhysique"
        case .chimie:
            return "imageChimie"
        case .histoire:
            return "imageHistoire"
        case .géo:
            return "imageGéo"
        case .francais:
            return "imageFrançais"
        case .anglais:
            return "imageAnglais"
        case .espagnol:
            return "imageEspagnol"
        case .russe:
            return "imageRusse"
        case .chinois:
            return "imageChinois"
        case .astronomie:
            return "imageAstronomie"
     case .musique:
         return "imageMusique"
     case .swift:
         return "imageSwift"
     case .python:
         return "imagePython"
     case .c:
         return "imageC+"
    case .solfege:
        return "imageSolfege"
        }
    }
    */
}

    
let monTheme = Theme.maths
    
var theme  = Theme.astronomie.self

//Declaration liste des matiéres Math
enum ThemeMatiere: String, Identifiable, CaseIterable {
    var id: String { UUID().uuidString }
    case algèbre
    case géometrie
    case trigonometrie
    case probabilités
   // case solfege
 //   case fonctions
   
    // Declaration des noms de matiéres Math  affichés dans l'app
    var matieresMath : String {
        switch self {
        case .algèbre:
            return "Algèbre"
        case .géometrie:
            return "Géometrie"
        case .trigonometrie:
            return "Trigonométrie"
        case .probabilités:
            return "Probabilité"
//        case .solfege:
 //           return "Solfege"
//    case .fonctions:
 //              return "Fonctions"
            
        }
    }
}

let maMatiere = ThemeMatiere.algèbre

        enum Property {
            case myDeck, freeDeck
        }

        // Declaration QCM
        struct QCM: Identifiable {
            var id : Int
            var questions: [Question]
            var theme: Theme
            var themeMatiere: ThemeMatiere
            var whoseDeck: Property
            var name: String
        }
        
        // Declaration Question
        struct Question {
            var enonce: String
            var isMultipleChoice: Bool = false
            var reponses : [Reponse]
        }
        // Declaration reponses
        struct Reponse {
            var value: String
            var isValid: Bool
        }
        // Declaration Statistique
        struct Stats{
            var nbReussite: Int
            var nbDeJeux: Int
            // fréquence de jeu(en heures)
            var intervalle: Int
            // nbre d'heures passées
            var tempsTotal: Int
        }
        // Declaration  Source QCM
        struct Source{
            var sourceName: String
            var lien: String
            var sourceImage: String
}
func getQcmsFromTotalQCM(themeMatiere: ThemeMatiere) -> [QCM] {

    let filteredQcms = totalQCM.filter{ $0.themeMatiere == themeMatiere}
    return filteredQcms

}


var qcm1: QCM = QCM (id: 1, questions: [
    
    Question(enonce: "Quelle est la racine carrée de 9 ?", reponses: [
        
        Reponse(value: "2", isValid: false),
        Reponse(value: "4", isValid: false),
        Reponse(value: "3", isValid: true),
        Reponse(value: "9", isValid: false)
    ]),
    
    Question(enonce: "Quelle est la racine carrée de 36 ?", reponses: [
           
           Reponse(value: "2", isValid: false),
           Reponse(value: "6", isValid: true),
           Reponse(value: "3", isValid: false),
           Reponse(value: "9", isValid: false)
       ])
], theme: .maths, themeMatiere: .algèbre, whoseDeck: .myDeck, name: "Racines carrées")

var qcm2: QCM = QCM (id: 2, questions: [
    
    Question(enonce: "Quelle est la racine carrée de 9 ?", reponses: [
        
        Reponse(value: "2", isValid: false),
        Reponse(value: "4", isValid: false),
        Reponse(value: "3", isValid: true),
        Reponse(value: "9", isValid: false)
    ]),
    
    Question(enonce: "Quelle est la racine carrée de 36 ?", reponses: [
           
           Reponse(value: "2", isValid: false),
           Reponse(value: "6", isValid: true),
           Reponse(value: "3", isValid: false),
           Reponse(value: "9", isValid: false)
       ])
], theme: .maths, themeMatiere: .algèbre, whoseDeck: .myDeck, name: "Nombres décimaux")




var qcm3: QCM = QCM (id: 3, questions: [
    
    Question(enonce: "Quelle est la racine carrée de 9 ?", reponses: [
        
        Reponse(value: "2", isValid: false),
        Reponse(value: "4", isValid: false),
        Reponse(value: "3", isValid: true),
        Reponse(value: "9", isValid: false)
    ]),
    
    Question(enonce: "Quelle est la racine carrée de 36 ?", reponses: [
           
           Reponse(value: "2", isValid: false),
           Reponse(value: "6", isValid: true),
           Reponse(value: "3", isValid: false),
           Reponse(value: "9", isValid: false)
       ])
], theme: .maths, themeMatiere: .algèbre, whoseDeck: .myDeck, name: "Puissances de 10")


var qcm4: QCM = QCM (id: 4, questions: [
    
    Question(enonce: "Quelle est la racine carrée de 9 ?", reponses: [
        
        Reponse(value: "2", isValid: false),
        Reponse(value: "4", isValid: false),
        Reponse(value: "3", isValid: true),
        Reponse(value: "9", isValid: false)
    ]),
    
    Question(enonce: "Quelle est la racine carrée de 36 ?", reponses: [
           
           Reponse(value: "2", isValid: false),
           Reponse(value: "6", isValid: true),
           Reponse(value: "3", isValid: false),
           Reponse(value: "9", isValid: false)
       ])
], theme: .maths, themeMatiere: .algèbre, whoseDeck: .myDeck, name: "Equations du 1er degré")


var qcm5: QCM = QCM (id: 5, questions: [
    
    Question(enonce: "Quelle est la racine carrée de 9 ?", reponses: [
        
        Reponse(value: "2", isValid: false),
        Reponse(value: "4", isValid: false),
        Reponse(value: "3", isValid: true),
        Reponse(value: "9", isValid: false)
    ]),
    
    Question(enonce: "Quelle est la racine carrée de 36 ?", reponses: [
           
           Reponse(value: "2", isValid: false),
           Reponse(value: "6", isValid: true),
           Reponse(value: "3", isValid: false),
           Reponse(value: "9", isValid: false)
       ])
], theme: .maths, themeMatiere: .algèbre, whoseDeck: .myDeck, name: "Tables de multiplication")

var qcm6: QCM = QCM (id: 6, questions: [
    
    Question(enonce: "Quelle est la racine carrée de 9 ?", reponses: [
        
        Reponse(value: "2", isValid: false),
        Reponse(value: "4", isValid: false),
        Reponse(value: "3", isValid: true),
        Reponse(value: "9", isValid: false)
    ]),
    
    Question(enonce: "Quelle est la racine carrée de 36 ?", reponses: [
           
           Reponse(value: "2", isValid: false),
           Reponse(value: "6", isValid: true),
           Reponse(value: "3", isValid: false),
           Reponse(value: "9", isValid: false)
       ])
], theme: .maths, themeMatiere: .algèbre, whoseDeck: .myDeck, name: "Soustractions")

var qcm7: QCM = QCM (id: 7, questions: [
    
    Question(enonce: "Quelle est la racine carrée de 9 ?", reponses: [
        
        Reponse(value: "2", isValid: false),
        Reponse(value: "4", isValid: false),
        Reponse(value: "3", isValid: true),
        Reponse(value: "9", isValid: false)
    ]),
    
    Question(enonce: "Quelle est la racine carrée de 36 ?", reponses: [
           
           Reponse(value: "2", isValid: false),
           Reponse(value: "6", isValid: true),
           Reponse(value: "3", isValid: false),
           Reponse(value: "9", isValid: false)
       ])
], theme: .maths, themeMatiere: .algèbre, whoseDeck: .myDeck, name: "Nombres premiers")

var qcm8: QCM = QCM (id: 8, questions: [
    
    Question(enonce: "Quelle est la racine carrée de 9 ?", reponses: [
        
        Reponse(value: "2", isValid: false),
        Reponse(value: "4", isValid: false),
        Reponse(value: "3", isValid: true),
        Reponse(value: "9", isValid: false)
    ]),
    
    Question(enonce: "Quelle est la racine carrée de 36 ?", reponses: [
           
           Reponse(value: "2", isValid: false),
           Reponse(value: "6", isValid: true),
           Reponse(value: "3", isValid: false),
           Reponse(value: "9", isValid: false)
       ])
], theme: .maths, themeMatiere: .algèbre, whoseDeck: .myDeck, name: "Division")

var qcm9: QCM = QCM (id: 9, questions: [
    
    Question(enonce: "Quelle est la racine carrée de 9 ?", reponses: [
        
        Reponse(value: "2", isValid: false),
        Reponse(value: "4", isValid: false),
        Reponse(value: "3", isValid: true),
        Reponse(value: "9", isValid: false)
    ]),
    
    Question(enonce: "Quelle est la racine carrée de 36 ?", reponses: [
           
           Reponse(value: "2", isValid: false),
           Reponse(value: "6", isValid: true),
           Reponse(value: "3", isValid: false),
           Reponse(value: "9", isValid: false)
       ])
], theme: .maths, themeMatiere: .algèbre, whoseDeck: .myDeck, name: "Multiples et sous-multiples du mètre")

var qcm10: QCM = QCM (id: 10, questions: [
    
    Question(enonce: "Quelle est la racine carrée de 9 ?", reponses: [
        
        Reponse(value: "2", isValid: false),
        Reponse(value: "4", isValid: false),
        Reponse(value: "3", isValid: true),
        Reponse(value: "9", isValid: false)
    ]),
    
    Question(enonce: "Quelle est la racine carrée de 36 ?", reponses: [
           
           Reponse(value: "2", isValid: false),
           Reponse(value: "6", isValid: true),
           Reponse(value: "3", isValid: false),
           Reponse(value: "9", isValid: false)
       ])
], theme: .maths, themeMatiere: .algèbre, whoseDeck: .myDeck, name: "Multiples et sous-multiples du gramme")




var totalQCM = [ qcm1, qcm2, qcm3, qcm4,qcm5, qcm6, qcm7,qcm8, qcm9, qcm10]











 
 
 
 

