//
//  AppDelegate.swift
//  Calculator Layout Project
//
//  Created by Renat Nazyrov on 14.08.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .orange
        window?.makeKeyAndVisible()

        let navigatorController = UINavigationController(rootViewController: Solution())
        window?.rootViewController = navigatorController

        return true
    }

}
