//
//  Door3_Player.swift
//  Alone-Comic
//
//  Created by Adam Azevedo on 5/5/20.
//  Copyright © 2020 250_DreamTeam. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class Door3_Player: UIViewController {
     
    override func viewDidLoad() {
        print("maybe here?")
        playVideo()
    }

    private func playVideo() {
        print("got here at least")
        guard let path = Bundle.main.path(forResource: "finalAnimation_II", ofType:"mp4") else {
            debugPrint("video.m4v not found")
            return
        }
        print("hereio dealio")
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
}
