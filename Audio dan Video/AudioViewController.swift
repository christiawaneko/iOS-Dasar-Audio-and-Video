//
//  AudioViewController.swift
//  Audio dan Video
//
//  Created by Christiawan Eko Saputro on 16/10/18.
//  Copyright © 2018 Dev. All rights reserved.
//

import UIKit
import AVFoundation

class AudioViewController: UIViewController {
    
    var ap = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let src = Bundle.main.path(forResource: "indonesia", ofType: "mp3")
        
        
        do{
            try ap = AVAudioPlayer(contentsOf: URL(fileURLWithPath: src!))
        }catch{
            print("error")
        }
        
    }
    
    @IBAction func btnPlay(_ sender: Any) {
        ap.play()
    }
    
    @IBAction func btnPause(_ sender: Any) {
        if ap.isPlaying {
            ap.pause()
        }
    }
    
    @IBAction func btnStop(_ sender: Any) {
        if ap.isPlaying {
            ap.stop()
        }
        ap.currentTime = 0
    }
}
