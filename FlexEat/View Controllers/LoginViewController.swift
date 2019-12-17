//
//  LoginViewController.swift
//  FlexEat
//
//  Created by Celeste Tan on 16/12/19.
//  Copyright © 2019 FlexEat. All rights reserved.
//

import UIKit
import FirebaseAuth
import AVKit

class LoginViewController: UIViewController {
    
    var videoPlayer: AVPlayer?
    var videoPlayerLayer: AVPlayerLayer?


    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
        setUpVideo()
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        if emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            showError("Please fill in all blanks")
            
        } else {
            
            errorLabel.alpha = 0
            
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
                
                if error != nil {
                    
                    self.showError(error!.localizedDescription)
                    
                } else {
                    
                    self.transitionToMainPage()
                    
                }
            }
            
        }
    }
    
    func setUpElements() {
        
        errorLabel.alpha = 0
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        
    }
    
    func showError(_ error: String) {
        
        errorLabel.alpha = 1
        errorLabel.text = error
        
    }
    
    func transitionToMainPage() {
        
        let mainPageViewController =
            storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.mainPageViewController) as? TabBarViewController
        
        view.window?.rootViewController = mainPageViewController
        view.window?.makeKeyAndVisible()
        
    }
    
    func setUpVideo() {
        
        //Get path to the resource in the bundle
        let bundlePath = Bundle.main.path(forResource: "turtle", ofType: "mp4")
        
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
        videoPlayerLayer?.frame = CGRect(x: -self.view.frame.size.width*1.6,
                                         y: 0,
                                         width: self.view.frame.size.width*3,
                                         height: self.view.frame.size.height)
        
        view.layer.insertSublayer(videoPlayerLayer!, at: 0)
        
        //Add it to the view and play it
        videoPlayer?.playImmediately(atRate: 1)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
