//
//  AppDelegate.swift
//  TFLKitClient
//
//  Created by Jeevan Thandi on 16/11/2019.
//  Copyright © 2019 Airla Tech Ltd. All rights reserved.
//

import UIKit
import TFLKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        let tflKit = TFLKit()
        let busCall = tflKit.arrivalsAtStop(stopIdCode: "490001139HO")

        busCall.execute(callback: { result in
            print(result)
        })
        return true
    }

}

