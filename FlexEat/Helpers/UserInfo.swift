//
//  UserInfo.swift
//  FlexEat
//
//  Created by Celeste Tan on 16/12/19.
//  Copyright © 2019 FlexEat. All rights reserved.
//

import Foundation
import Firebase

class UserInfo: Codable {
    
    var firstName: String
    var lastName: String
    var email: String
    var password: String
    var coins: Int
    
    init (email: String, password: String, coins: Int, firstName: String, lastName: String) {
        self.email = email
        self.password = password
        self.coins = coins
        self.firstName = firstName
        self.lastName = lastName
    }
    
    static func saveToFirebase() {
        let db = Firestore.firestore()
        
        db.collection("users").document("LA").setData([
            "firstName": "",
            "state": "CA",
            "country": "USA"
        ]) { err in
            if let err = err {
                print("Error writing document: \(err)")
            } else {
                print("Document successfully written!")
            }
        }

    }
    
}
