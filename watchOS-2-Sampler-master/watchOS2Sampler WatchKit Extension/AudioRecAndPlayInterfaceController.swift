//
//  AudioRecAndPlayInterfaceController.swift
//  watchOS2Sampler
//
//  Created by maping.mp on 2015/12/18.
//  Copyright © 2015年 maping.mp. All rights reserved.
//

import WatchKit
import Foundation


class AudioRecAndPlayInterfaceController: WKInterfaceController {

    
    @IBOutlet weak var recLabel: WKInterfaceLabel!
    @IBOutlet weak var playLabel: WKInterfaceLabel!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    
    // =========================================================================
    // MARK: - Private

    func recFileURL() -> NSURL {
        
        // Must use a shared container
        let fileManager = NSFileManager.defaultManager()
        let container = fileManager.containerURLForSecurityApplicationGroupIdentifier("group.com.shu223.watchos2sampler") // replace with your own identifier!!!!
        let audioFileURL = container!.URLByAppendingPathComponent("rec.mp4")
        
        return audioFileURL
    }
    
    
    // =========================================================================
    // MARK: - Actions
    
    @IBAction func recBtnTapped() {

        self.presentAudioRecorderControllerWithOutputURL(
            self.recFileURL(),
            preset: WKAudioRecorderPreset.HighQualityAudio,
            options: nil,
            completion:
            { (didSave, error) -> Void in
                print("didSave:\(didSave)\n")
            })
    
        
        
    }
    
    @IBAction func playBtnTapped() {
        
        self.presentMediaPlayerControllerWithURL(
            self.recFileURL(),
            options: nil) { (didPlayToEnd, endTime, error) -> Void in
        }
    }
}
