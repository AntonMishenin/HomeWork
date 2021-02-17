//
//  ViewController.swift
//  AppFriends
//
//  Created by h8llcat on 17.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @objc func buttonAction(sender: UIButton!) {
        view.backgroundColor = .white
        print("Button Clicked")
    }
    
    private let loginContentView:UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let unameTxtField:UITextField = {
        let txtField = UITextField()
        txtField.backgroundColor = .white
        txtField.placeholder = "Username"
        txtField.borderStyle = .roundedRect
        txtField.translatesAutoresizingMaskIntoConstraints = false
        return txtField
    }()
    
    private let pwordTxtField:UITextField = {
        let txtField = UITextField()
        txtField.isSecureTextEntry = true
        txtField.backgroundColor = .white
        txtField.placeholder = "Password"
        txtField.borderStyle = .roundedRect
        txtField.translatesAutoresizingMaskIntoConstraints = false
        return txtField
    }()
    
    let btnLogin:UIButton = {
        let btn = UIButton(type:.system)
        btn.backgroundColor = .blue
        btn.setTitle("Login", for: .normal)
        btn.tintColor = .white
        btn.layer.cornerRadius = 5
        btn.clipsToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupViews()
        
        setupAutoLayouts()
    }

    func setupViews() {
        view.backgroundColor = .lightGray
        
        loginContentView.addSubview(unameTxtField)
        loginContentView.addSubview(pwordTxtField)
        loginContentView.addSubview(btnLogin)
        
        view.addSubview(loginContentView)
    }
    
    func setupAutoLayouts() {
        loginContentView.leftAnchor.constraint(equalTo:view.leftAnchor, constant: 10).isActive = true
        loginContentView.rightAnchor.constraint(equalTo:view.rightAnchor, constant: -10).isActive = true
        loginContentView.heightAnchor.constraint(equalToConstant: 185).isActive = true
        loginContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        unameTxtField.topAnchor.constraint(equalTo:loginContentView.topAnchor, constant:25).isActive = true
        unameTxtField.leftAnchor.constraint(equalTo:loginContentView.leftAnchor, constant:20).isActive = true
        unameTxtField.rightAnchor.constraint(equalTo:loginContentView.rightAnchor, constant:-20).isActive = true
        unameTxtField.heightAnchor.constraint(equalToConstant:30).isActive = true
        
        pwordTxtField.topAnchor.constraint(equalTo:unameTxtField.bottomAnchor, constant:25).isActive = true
        pwordTxtField.leftAnchor.constraint(equalTo:loginContentView.leftAnchor, constant:20).isActive = true
        pwordTxtField.rightAnchor.constraint(equalTo:loginContentView.rightAnchor, constant:-20).isActive = true
        pwordTxtField.heightAnchor.constraint(equalToConstant:30).isActive = true
        
        btnLogin.topAnchor.constraint(equalTo:pwordTxtField.bottomAnchor, constant:25).isActive = true
        btnLogin.leftAnchor.constraint(equalTo:loginContentView.leftAnchor, constant:20).isActive = true
        btnLogin.rightAnchor.constraint(equalTo:loginContentView.rightAnchor, constant:-20).isActive = true
        btnLogin.heightAnchor.constraint(equalToConstant:30).isActive = true
    }
}

