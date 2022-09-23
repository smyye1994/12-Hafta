//
//  ViewController.swift
//  12.Hafta
//
//  Created by Sümeyye Kılıçoğlu on 21.09.2022.
//

import UIKit
import TinyConstraints


class ViewController: UIViewController {
    private var textField: UITextField = {
      let textFieldName = UITextField()
        textFieldName.text = "User Name:"
        textFieldName.backgroundColor = .systemGray
        textFieldName.font = .systemFont(ofSize: 18, weight: .semibold)
        textFieldName.layer.cornerRadius = 8
        textFieldName.clipsToBounds = true
        textFieldName.layer.borderWidth = 1
        textFieldName.textAlignment = .center
        return textFieldName
    }()
    private var textField1: UITextField = {
      let textFieldPassword = UITextField()
        textFieldPassword.text = "Password:"
        textFieldPassword.backgroundColor = .systemGray
        textFieldPassword.font = .systemFont(ofSize: 18, weight: .semibold)
        textFieldPassword.layer.cornerRadius = 8
        textFieldPassword.clipsToBounds = true
        textFieldPassword.layer.borderWidth = 1
        textFieldPassword.textAlignment = .center
        return textFieldPassword
    }()
    private var textField2: UITextField = {
      let textFieldAgain = UITextField()
        textFieldAgain.text = "Again Password:"
        textFieldAgain.backgroundColor = .systemGray
        textFieldAgain.font = .systemFont(ofSize: 18, weight: .semibold)
        textFieldAgain.layer.cornerRadius = 8
        textFieldAgain.clipsToBounds = true
        textFieldAgain.layer.borderWidth = 1
        textFieldAgain.textAlignment = .center
        return textFieldAgain
    }()
    
    private var button: UIButton = {
        let button = UIButton()
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 8
        button.layer.borderWidth = 1
        button.addTarget(self, action: #selector(segue), for: .touchUpInside)
        return button
    }()
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Segue" {
            if let PageViewController = segue.destination as? PageViewController {
               
            }
        }
            
    }
    
    @objc func segue() {
        performSegue(withIdentifier: "Segue", sender: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        view.addSubview(textField)
        view.addSubview(textField1)
        view.addSubview(textField2)
        
      
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
        
        textField.leftToSuperview().constant = 20
        textField.rightToSuperview().constant = -20
        textField.topToSuperview().constant = 100
        textField.height(40)
        
        
        textField1.leftToSuperview().constant = 20
        textField1.rightToSuperview().constant = -20
        textField1.topToSuperview().constant = 150
        textField1.height(40)
        textField2.leftToSuperview().constant = 20
        textField2.rightToSuperview().constant = -20
        textField2.topToSuperview().constant = 200
        textField2.height(40)
      
        button.width(100)
        button.height(40)
        button.topToSuperview().constant = 400
        button.leftToSuperview().constant = 150
        
    }
}

