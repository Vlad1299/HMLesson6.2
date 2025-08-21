//
//  ViewController.swift
//  HMLesson6.2
//
//  Created by Игнат Гончаров on 19.08.2025.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private var userName = "User"
    private var password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }
    
    @IBAction func logInButtonTapped() {
        if userName != userNameTF.text || password != passwordTF.text {
            alertController(title: "Wrong!", message: "Invalid login or password")
            passwordTF.text = ""
        }
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotNameTapped() {
        alertController(title: "Ooops!", message: "Your name is 'User'")
    }
    
    @IBAction func forgotPassword() {
        alertController(title: "Ooops!", message: "Your password is 'Password'")
    }
    
    private func alertController(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Thank's!", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}

