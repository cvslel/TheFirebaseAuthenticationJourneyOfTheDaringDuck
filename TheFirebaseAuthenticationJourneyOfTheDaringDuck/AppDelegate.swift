//
//  AppDelegate.swift
//  TheFirebaseAuthenticationJourneyOfTheDaringDuck
//
//  Created by Cenker Soyak on 18.10.2023.
//

import UIKit
import FirebaseCore

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.rootViewController = RegisterVC()
        window?.makeKeyAndVisible()
        FirebaseApp.configure()
        return true
    }
}
