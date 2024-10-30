//
//  ViewController.swift
//  AlertProject
//
//  Created by Elif Gökdemir on 30.10.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var password2Text: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var userNameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClicked(_ sender: Any) {
        
        if userNameText.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Username Not found")
        } else if passwordText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "password not found")
        }else if passwordText.text != password2Text.text {
            makeAlert(titleInput: "Error", messageInput: "Do not Matching Password")
        }else {
            makeAlert(titleInput: "Success", messageInput: "user OK")
        }
    }
    
    func makeAlert(titleInput: String, messageInput: String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}

