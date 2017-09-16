//
//  AppDelegate.swift
//  RootViewControllerSample
//
//  Copyright © 2017年 haranicle. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    let rootViewController = RootViewController()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        rootViewController.switchState(to: .splash)
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {}

    func applicationDidEnterBackground(_ application: UIApplication) {}

    func applicationWillEnterForeground(_ application: UIApplication) {}

    func applicationDidBecomeActive(_ application: UIApplication) {}

    func applicationWillTerminate(_ application: UIApplication) {}

    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        rootViewController.switchState(to: .home)
        let vcList = [ FirstViewController(), SecondViewController() ]
        rootViewController.homeNavigationViewController.setViewControllers(vcList, animated: false)
        return true
    }

    func somethingHappens() {
        rootViewController.switchState(to: .home)
    }
}
