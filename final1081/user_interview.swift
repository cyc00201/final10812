//
//  user_interview.swift
//  final1081
//
//  Created by User06 on 2019/12/18.
//  Copyright © 2019 matcha55. All rights reserved.
//

import UIKit
import FirebaseAuth
class user_interview: UIViewController {

       
    @IBOutlet weak var Account: UILabel!
    var Atemp: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Account.text = Atemp
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as?user_pro
        if let Account = sender as? String{
            controller?.account = Account
        }
    }
}


