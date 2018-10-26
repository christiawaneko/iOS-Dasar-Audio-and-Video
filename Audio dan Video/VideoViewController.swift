//
//  VideoViewController.swift
//  Audio dan Video
//
//  Created by Christiawan Eko Saputro on 16/10/18.
//  Copyright © 2018 Dev. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class VideoViewController: UIViewController {

    var ap = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnPlay(_ sender: Any) {
        let src = Bundle.main.path(forResource: "indonesia", ofType: "mp4")
        
        ap = AVPlayer(url: URL(fileURLWithPath: src!))
        
        let  controller = AVPlayerViewController()
        controller.player = ap
        
        present(controller, animated: true) {
            controller.player?.play()
        }
    }
    
}
