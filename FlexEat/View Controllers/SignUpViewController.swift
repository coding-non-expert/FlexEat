//
//  SignUpViewController.swift
//  FlexEat
//
//  Created by Celeste Tan on 16/12/19.
//  Copyright © 2019 FlexEat. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import AVKit

class SignUpViewController: UIViewController {
    
    var videoPlayer: AVPlayer?
    var videoPlayerLayer: AVPlayerLayer?

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
        setUpVideo()
    }
    
    //Check the fields and validate the data is correct. If everything is correct, this method returns nil. Otherwise, it returns the error message.
    func validateFields() -> String? {
        
        //Check all fields are filled in
        if firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
                return "Please fill in all fields"
        }
        
        let cleanedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(cleanedPassword) == false {
            // Password isn't secure enough
            return "Please make sure your password is at least 8 characters, contains a special character and a number."
            
        }
        return nil
    }
    
    func setUpElements() {
        
        errorLabel.alpha = 0
        Utilities.styleTextField(firstNameTextField)
        Utilities.styleTextField(lastNameTextField)
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        
        //Validate the fields
        let error = validateFields()
        
        if error != nil {
            showError(error!)
            
        } else {
            
            let firstName = firstNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let lastName = lastNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            //Create user
            Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
                //Check for errors
                
                if err != nil {
                    //There's an error
                    self.showError("Error creating user")
                    
                } else {
                    
                    self.errorLabel.alpha = 0
                    //User was created successfully
                    
                    let db = Firestore.firestore()
                    
                    //Save first and last name
                    db.collection("users").addDocument(data: ["firstName": firstName, "lastName": lastName, "uid": result!.user.uid]) { (error) in
                        
                        if error != nil {
                            self.showError("Name could not be saved")
                        }
                    }
                    
                self.transitionToMainPage()
                    
                    
                }
            }
        }
    }
    
    func showError(_ error: String) {
        
        errorLabel.text = error
        errorLabel.alpha = 1
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
