//
//  ViewController.swift
//  BetterMac
//
//  Created by Justin Léger on 2018-07-29.
//  Copyright © 2018 Justin Léger. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var hiddenFiles: MacToggle!
    
    @IBAction func updateScreenshot(_ sender: Any) {
        print("currently not implemented. Leaving some work for @almiche and @kcamcam")
    }
    @IBAction func creatorLink(_ sender: Any) {
        NSWorkspace.shared.open(URL(string: "https://www.justinleger.ca")!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        hiddenFiles.callback = {(t: Bool) in self.showHiddenFiles(visible: t)}
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    func showHiddenFiles(visible: Bool) {
        let path =  Bundle.main.path(forResource: (visible ? "hidden_files_visible": "hidden_files_hidden"), ofType: "scpt")
        let process = Process()
        if process.isRunning == false {
            process.launchPath = "/usr/bin/osascript"
            process.arguments = [path] as? [String]
            process.launch()
        }
    }


}

