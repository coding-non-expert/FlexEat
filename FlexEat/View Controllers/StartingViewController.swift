//
//  StartingViewController.swift
//  FlexEat
//
//  Created by Celeste Tan on 16/12/19.
//  Copyright © 2019 FlexEat. All rights reserved.
//

import UIKit
import AVKit

class StartingViewController: UIViewController {
    
    var videoPlayer: AVPlayer?
    
    var videoPlayerLayer: AVPlayerLayer?

    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        //Uncomment the line below and the function below to enable video playing
        //setUpVideo()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
    }
    
    func setUpElements() {
        
        Utilities.styleHollowButton(signUpButton)
        Utilities.styleFilledButton(loginButton)
        
    }
    
    /*func setUpVideo() {
        
        //Get path to the resource in the bundle
        let bundlePath = Bundle.main.path(forResource: <#T##String?#>, ofType: "mp4")
        
        guard bundlePath != nil else {
            return
        }
        
        //Create url
        let url = URL(fileURLWithPath: bundlePath!)
        
        //Create player item
        let item = AVPlayerItem(url: url)
        
        //Create the player
        videoPlayer = AVPlayer(playerItem: item)
        
        //Create the layer
        videoPlayerLayer = AVPlayerLayer(player: videoPlayer!)
        
        //Adjust the size and frame
        videoPlayerLayer?.frame = CGRect(x: -self.view.frame.size.width*1.5,
                                         y: 0,
                                         width: self.view.frame.size.width*4,
                                         height: self.frame.view.size.height)
     
        view.layer.insertSublayer(videoPlayerLayer!, at: 0)
        
        //Add it to the view and play it
        videoPlayer?.playImmediately(atRate: 0.3)
        
    }*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
