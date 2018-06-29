//
//  ViewController.swift
//  HelloRecordAudio
//
//  Created by 林奕德 on 2018/3/25.
//  Copyright © 2018年 AppsAdamLin. All rights reserved.
//

import UIKit
import AVFoundation

enum AudioSessionMode {
    case record
    case play
}
class ViewController: UIViewController,AVAudioRecorderDelegate {
    
    
    var recordHelper:RecordHelper?
    
    @IBAction func recordAudio(_ sender: UIButton) {
        recordHelper?.recordAudio()
    }
    @IBAction func stopRecordAudio(_ sender: UIButton) {
        recordHelper?.stopRecordAudio()
    }
    @IBAction func playRecordSound(_ sender: UIButton) {
        recordHelper?.playRecordSound()
        
    }
    @IBAction func stopPlaying(_ sender: UIButton) {
        recordHelper?.stopPlaying()
        
    }
    
   
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
       recordHelper = RecordHelper()
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

