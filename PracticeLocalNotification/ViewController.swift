//
//  ViewController.swift
//  PracticeLocalNotification
//
//  Created by Johnny Toda on 2022/03/22.
//

import UIKit

final class ViewController: UIViewController {
    @IBAction private func showLocalNotification(_ sender: Any) {
        generateLocalNotification()
    }

    private func generateLocalNotification() {
        let content = UNMutableNotificationContent()
        content.title = "This is title"
        content.body = "This is body"
        content.subtitle = "This is subTitle"
        content.sound = UNNotificationSound.default

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)

        let request = UNNotificationRequest(identifier: "FiveSecond", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}
