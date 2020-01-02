//
//  user_pro.swift
//  final1081
//
//  Created by User06 on 2020/1/2.
//  Copyright © 2020 matcha55. All rights reserved.
//
import UIKit
import Firebase
class user_pro: UIViewController {
    var account:String = ""
    @IBOutlet weak var name: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let db  = Firestore.firestore()
        
         db.collection("user_profile").getDocuments() { (querySnapshot, err) in
             if let err = err {
                 print("Error getting documents: \(err)")
             } else {
                 for document in querySnapshot!.documents {
                     print("\(document.documentID) => \(document.data())")
                 }
             }
        }
        // Do any additional setup after loading the view.
    }
    

}

