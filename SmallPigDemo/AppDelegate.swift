//
//  AppDelegate.swift
//  SmallPigDemo
//
//  Created by anfa on 2019/3/29.
//  Copyright © 2019 anfa. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow.init()
        window?.frame = UIScreen.main.bounds
        
        let vc = JKHomeViewController(nibName: nil, bundle: nil)
        vc.tabBarItem = UITabBarItem.init(title: "首页", image: UIImage.init(named: "tab_home"), selectedImage: UIImage.init(named: "tab_home"))
        let nav1 = UINavigationController(rootViewController: vc)
        
        let vc1 = MineViewController(nibName: nil, bundle: nil)
        vc1.tabBarItem = UITabBarItem.init(title: "我的", image: UIImage.init(named: "tab_person_unselected"), selectedImage: UIImage.init(named: "tab_person_unselected"))
        vc1.title = "我的"
        let nav2 = UINavigationController(rootViewController: vc1)
        
        let tab = JKBaseTabBarController.init(nibName: nil, bundle: nil)
        tab.viewControllers = [nav1,nav2]
        window?.rootViewController = tab
        
        //获取navBar的全局代理对象
        let allNavBar = UINavigationBar.appearance()
        var backImage : UIImage = UIImage.init(named: "back")!
        backImage = backImage.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        allNavBar.backIndicatorImage = backImage
        allNavBar.backIndicatorTransitionMaskImage = backImage
        allNavBar.setBackgroundImage(UIImage.creatImageWithColor(color: UIColor.white), for: UIBarPosition.any, barMetrics: UIBarMetrics.default)
        //获取barButtonItem的全局对象
        let allBarButtomItem = UIBarButtonItem.appearance()
        allBarButtomItem.setBackButtonTitlePositionAdjustment(UIOffset.init(horizontal: 0, vertical: -60), for: UIBarMetrics.default)
        
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

