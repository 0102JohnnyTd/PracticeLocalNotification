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
        content.title = "初めてのローカル通知"
        content.body = "通知デビューおめでとうンゴ！"
        content.sound = UNNotificationSound.default

        let request = UNNotificationRequest(identifier: "immediately", content: content, trigger: nil)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}

