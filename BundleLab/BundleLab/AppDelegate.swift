//
//  AppDelegate.swift
//  BundleLab
//
//  Created by Ростислав Нурдинов on 21.02.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print(#function + " application is started")
        return true
    }
    

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        print(#function + " trigger when ever the application needs a new scene or window to display")
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
        print(#function + " trigger when ever user discards a scene")
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        print(#function + " switch to another application or press the Home key.")
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print(#function + " the application has moved to Active")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print(#function + " going to Background")
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        print(#function + " switching from Background to Foreground")
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        print(#function + " the user closes the application")
    }

}

