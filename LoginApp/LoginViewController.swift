//
//  LoginViewController.swift
//  NotesManagerAppTask1
//
//  Created by iPhone Apps Nano Nino on 28/12/24.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    var viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.borderStyle = .roundedRect
        passwordTextField.borderStyle = .roundedRect
        loginButton.setTitle("Login", for: .normal)
    }
    @IBAction func loginButtonAction(_ sender: Any) {
        guard let email = emailTextField.text, !email.isEmpty,
                     let password = passwordTextField.text, !password.isEmpty else {
                   messageLabel.text = "Please fill in all fields."
                   return
               }

               viewModel.login(email: email, password: password) { [weak self] message in
                   DispatchQueue.main.async {
                       self?.messageLabel.text = message
                   }
               }
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
