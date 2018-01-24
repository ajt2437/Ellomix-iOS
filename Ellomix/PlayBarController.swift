//
//  PlayBarController.swift
//  Ellomix
//
//  Created by Kevin Avila on 12/3/17.
//  Copyright © 2017 Akshay Vyas. All rights reserved.
//

import UIKit

class PlayBarController: UIViewController {
    
    
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var playbarArtwork: UIImageView!
    @IBOutlet weak var playbarTitle: UILabel!
    @IBOutlet weak var playbarArtist: UILabel!
    @IBOutlet weak var placeholderView: UIView!
    @IBOutlet weak var youtubePlayer: YouTubePlayerView!
    var currentTrack: Any?
    
    override func viewDidLoad() {
        youtubePlayer.isHidden = true
        youtubePlayer.playerVars = ["playsinline": 1 as AnyObject, "showinfo": 0 as AnyObject, "rel": 0 as AnyObject, "modestbranding": 1 as AnyObject, "controls": 1 as AnyObject]
    }

    @IBAction func playPause(_ sender: Any) {
        switch currentTrack {
        case is SoundcloudTrack:
            print("Play/pause Soundcloud track.")
        case is YouTubeVideo:
            if (youtubePlayer.playerState == YouTubePlayerState.Playing) {
                playPauseButton.setImage(#imageLiteral(resourceName: "play"), for: .normal)
                youtubePlayer.pause()
            } else {
                playPauseButton.setImage(#imageLiteral(resourceName: "pause"), for: .normal)
                youtubePlayer.play()
            }
        default:
            print("Unable to play or pause current track.")
        }
    }

}