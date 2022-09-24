//
//  LoginViewController.swift
//  SwiftText
//
//  Created by Srihith Prudhivi on 22/09/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.clipsToBounds = true
        return scrollView
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
 
    private let emailField: UITextField = {
        let field = UITextField()
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .continue
        field.layer.cornerRadius = 15
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.placeholder = " Email Address"
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .white
        
        return field
    }()
    
    private let passwordField: UITextField = {
        let field = UITextField()
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .done
        field.layer.cornerRadius = 15
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.placeholder = " Password"
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .white
        field.isSecureTextEntry = true
        
        return field
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = .link
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        button.layer.masksToBounds = true
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Log In"
        view.backgroundColor = .white
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Register",
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTapRegister))
        
        view.addSubview(scrollView)
        scrollView.addSubview(imageView)   //Adding subviews
        scrollView.addSubview(emailField)
        scrollView.addSubview(passwordField)
        scrollView.addSubview(loginButton)

        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView.frame = view.bounds
        //let size = view.frame.size.width
        imageView.frame = CGRect(x: (view.width)/25,
                                 y: 0,
                                 width: view.width,
                                 height: view.width)
        emailField.frame = CGRect(x: 30,
                                  y: imageView.bottom - 100,
                                  width: scrollView.width - 60,
                                  height: 55)
        passwordField.frame = CGRect(x: 30,
                                  y: emailField.bottom + 15,
                                  width: scrollView.width - 60,
                                  height: 55)
        loginButton.frame = CGRect(x: 275,
                                  y: passwordField.bottom + 19,
                                  width: scrollView.width - 305,
                                  height: 55)
    }
    
    @objc private func didTapRegister()
    {
        let vc = RegisterViewController()
        vc.title = "Create an account"
        navigationController?.pushViewController(vc, animated: true)
        
    }
    

    

}
