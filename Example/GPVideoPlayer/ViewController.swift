//
//  ViewController.swift
//  GPVideoPlayer
//
//  Created by pgpt10 on 02/19/2019.
//  Copyright (c) 2019 pgpt10. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mediaView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let player = GPVideoPlayer.initialize(with: self.mediaView.bounds) {
            player.isToShowPlaybackControls = true
            
            self.mediaView.addSubview(player)
            
            let url = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4")!

            player.loadVideo(with: url)
            player.isToShowPlaybackControls = true
            player.isMuted = true
            player.playVideo()
        }
    }
}

