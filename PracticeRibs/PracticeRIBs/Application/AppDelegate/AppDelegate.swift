//
//  AppDelegate.swift
//  PracticeRibs
//
//  Created by G00332 on 16/6/2022.
//

import UIKit

import RIBs

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    // MARK: - Internal
    
    var window: UIWindow?
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        let appRootBuilder = AppRootBuilder(
            dependency: AppComponent()
        )
        let result = appRootBuilder.build()
        let launchRouter = result.launchRouter
        self.launchRouter = launchRouter
        urlHandler = result.urlHandler
        launchRouter.launch(from: window)
        return true
    }
    
    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
        urlHandler?.handle(url)
        return true
    }
    
    
    // MARK: - Private
    
    private var launchRouter: LaunchRouting?
    private var urlHandler: URLHandler?
}

protocol URLHandler: AnyObject {
    func handle(_ url: URL)
}
