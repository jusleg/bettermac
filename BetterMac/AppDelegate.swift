//
//  AppDelegate.swift
//  BetterMac
//
//  Created by Justin Léger on 2018-07-29.
//  Copyright © 2018 Justin Léger. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {


    @IBAction func contributors(_ sender: Any) {
        NSWorkspace.shared.open(URL(string: "https://github.com/jusleg/bettermac/graphs/contributors")!)
    }
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

