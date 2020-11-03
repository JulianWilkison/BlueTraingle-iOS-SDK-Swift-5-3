//
//  TestBlueTrainglePodApp.swift
//  TestBlueTrainglePod
//
//  Created by Julian Wilkison-Duran on 11/2/20.
//

import SwiftUI
import BlueTriangleSDK_iOS.BTTracker

class AppDelegate: NSObject, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        BTTracker().setSiteID("demosports");
        return true
    }
}

@main
struct TestBlueTrainglePodApp: App {

    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
