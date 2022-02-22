//
//  ChatAppApp.swift
//  ChatApp
//
//  Created by Uzair Riaz on 21/02/2022.
//

import SwiftUI
import Firebase

@main
struct ChatAppApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
