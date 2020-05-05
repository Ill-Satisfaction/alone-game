//
//  Door1_Player.swift
//  Alone-Comic
//
//  Created by Adam Azevedo on 5/5/20.
//  Copyright © 2020 250_DreamTeam. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class Door1_Player: UIViewController {
     
//    override func viewDidLoad() {
//        print("maybe here?")
//        playVideo()
//    }

//    private func playVideo() {
  //      let videoURL = URL(fileURLWithPath: "open_1.mp4")
    //    let player = AVPlayer(url: videoURL)
      //  let playerViewController = AVPlayerViewController()
      //  playerViewController.player = player
       // self.present(playerViewController, animated: true) {
         //   playerViewController.player!.play()
        //}
       // print("got here at least")
       // guard let path = Bundle.main.path(forResource: "open_1", ofType:"mp4") else {
       //     debugPrint("video.m4v not found")
       //     return
      //  }
      //  print("hereio dealio")
     //   let player = AVPlayer(url: URL(fileURLWithPath: path))
     //   let playerController = AVPlayerViewController()
      //  playerController.player = player
      //  present(playerController, animated: true) {
       //     player.play()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.playVideo()
    }
    
 func playVideo() {

        guard let url = URL(string: "open_1" )else {

            return

        }

        // Create an AVPlayer, passing it the HTTP Live Streaming URL.

        let player = AVPlayer(url: url)

     

        // Create a new AVPlayerViewController and pass it a reference to the player.

        let controller = AVPlayerViewController()

        controller.player = player

     

        // Modally present the player and call the player's play() method when complete.

        present(controller, animated: true) {

            player.play()

        }

    }
    
        
    

}
