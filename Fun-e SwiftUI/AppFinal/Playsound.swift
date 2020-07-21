 //
 //  Playsound.swift
 //  Fun e parametres
 //
 //  Created by CISSE Malik on 08/07/2020.
 //  Copyright © 2020 Cisse Malik. All rights reserved.
 //

 import AVFoundation

 var audioPlayer: AVAudioPlayer?

 func playSound(sound: String, type: String) {
     if let path = Bundle.main.path(forResource: sound, ofType: type) {
         do {
             audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
             audioPlayer?.play()
         } catch {
             print("Erreur: fichier son introuvable!")
         }
     }
 }

 //struct Playsound: View {
 //    var body: some View {
 //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
 //    }
 //}
 //
 //struct Playsound_Previews: PreviewProvider {
 //    static var previews: some View {
 //        Playsound()
 //    }
 //}

