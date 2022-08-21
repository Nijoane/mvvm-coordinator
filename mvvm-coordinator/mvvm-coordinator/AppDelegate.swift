//
//  AppDelegate.swift
//  mvvm-coordinator
//
//  Created by Nicaely Joane on 18/08/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var appCoodinator: AppCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)

        let navController = UINavigationController.init()
        appCoodinator = AppCoordinator(navigation: navController)
        appCoodinator?.start()

        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        return true
    }
}

