//
//  ArbuzTaskAppApp.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 21.05.2023.
//

import SwiftUI
import Firebase

let screen = UIScreen.main.bounds

@main
struct ArbuzTaskAppApp: App {
    
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    
    var body: some Scene {
        WindowGroup {
            MainTabBar()
        }
    }
    
    class AppDelegate: NSObject, UIApplicationDelegate {
        
        //UIKit method is connecting to Firebase
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
            
            FirebaseApp.configure()
            print("OK!")
            
            return true
        }
    }
}
