//
//  InterfaceController.swift
//  watchOS2Sampler WatchKit Extension
//
//  Created by maping.mp on 2015/12/18.
//  Copyright © 2015年 maping.mp. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {

    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    override func willActivate() {
        super.willActivate()
        self.pushControllerWithName("AudioRecAndPlay", context: nil)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
}
