//
//  AppDelegate.swift
//  Kjue
//
//  Created by Benedikt Terhechte on 26/05/15.
//  Copyright (c) 2015 Benedikt Terhechte. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        let n: NSFileHandle = NSFileHandle(forReadingAtPath: "/tmp/test")!
        let f: KjueFilter = KjueFilter.VnodeFD(fd: UInt(n.fileDescriptor), fflags: [KjueFilter.KjueFilterFlags.VNodeFlags.Attrib, KjueFilter.KjueFilterFlags.VNodeFlags.Attrib], data: 0)
        let q: KjueQueue = KjueQueue(name: "fileQueue", filter: f)
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), { () -> Void in
            println("Listening for file changes")
            while (true) {
                for x in q {
                    println(x)
                }
            }
        })
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

