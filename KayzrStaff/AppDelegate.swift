//
//  AppDelegate.swift
//  KayzrStaff
//
//  Created by Jens Leirens on 05/12/2017.
//  Copyright © 2017 Jens Leirens. All rights reserved.
//

import UIKit
import KayzrStaff_Shared
import Fabric
import Crashlytics

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    {
        Fabric.with([Crashlytics.self])
        return true
    }


}

