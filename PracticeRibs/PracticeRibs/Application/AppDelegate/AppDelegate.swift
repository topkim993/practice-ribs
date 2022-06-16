//
//  AppDelegate.swift
//  PracticeRibs
//
//  Created by G00332 on 16/6/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        
        let viewController = UIViewController()
        viewController.view.backgroundColor = .green
        
        window.rootViewController = viewController
        window.makeKeyAndVisible()
        
        return true
    }
}
