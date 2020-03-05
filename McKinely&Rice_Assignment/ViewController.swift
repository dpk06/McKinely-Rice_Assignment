//
//  ViewController.swift
//  McKinely&Rice_Assignment
//
//  Created by Deep on 05/03/20.
//  Copyright © 2020 Deepak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var id_textField: UITextField!
    
    @IBOutlet weak var password_textField: UITextField!
    @IBOutlet weak var login_btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func login_tapped(_ sender: Any) {
        
        if (password_textField.text != "") && (id_textField.text != "") {
            callLoginApi()
        } else {
            let alert = UIAlertController.init(title: "", message: "Please enter all the details", preferredStyle: .alert)
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    func callLoginApi() {
        
        let url = String(format: " https://reqres.in/")
        let  paramdata = ["email" : id_textField.text ?? "" , "password" : password_textField.text ?? ""] as [String : Any]
        
        AppCommonData.sharedInstance.makePOSTApiCall(serviceUrl: url, parameters: paramdata) { (isSuccesfull, response) in
            if isSuccesfull {
            let responseStr = response as! String
                let jsondata = Data(responseStr.utf8)
                
                print("Data--", responseStr)
                
            }
            else {
//                   AppCommonData.sharedInstance.removeLoader()
                print(" call fail")
            }

        }
        
    }
}

