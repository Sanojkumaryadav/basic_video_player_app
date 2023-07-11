//
//  ViewController.swift
//  Video_Player
//
//  Created by Sanoj on 10/07/23.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }
    
    private func playVideo(){
        guard let path = Bundle.main.path(forResource: "test", ofType: "mp4") else {
            print("Video not found")
            return
        }
        let videoPlayer = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = videoPlayer
        
        present(playerController, animated: true){
            videoPlayer.play()
        }
    }
}

