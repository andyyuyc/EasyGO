//
//  NotificationDelegate.swift
//  EasyGO
//
//  Created by Mila Paymukhina on 4/28/24.
//

import SwiftUI
import UserNotifications

class NotificationDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            if granted {
                print("Notification authorization granted")
            } else {
                print("Notification authorization denied")
            }
        }
        return true
    }
}
