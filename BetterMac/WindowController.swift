//
//  WindowController.swift
//  bettermac
//
//  Created by Justin Léger on 2018-07-28.
//  Copyright © 2018 Justin Léger. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {
    override func windowDidLoad() {
        super.windowDidLoad()
        window?.appearance = NSAppearance(named: NSAppearance.Name.vibrantDark)
    }

}
