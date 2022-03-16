//
//  SignInViewController.swift
//  Carbon-Clone
//
//  Created by mac on 01/12/2021.
//

import UIKit

class SignInViewController: UIViewController {
	
	let param = [String: Any]()
	
	let emailModel = SignInEmailModel()
	let passwordModel = SignInPasswordModel()
	
	let validation = Validation()
	
	var logo: UIImageView = {
		let logo = UIImageView()
		logo.translatesAutoresizingMaskIntoConstraints = false
		logo.contentMode = .scaleAspectFit
		logo.image = UIImage(named: "carbon")
		return logo
	}()

	var welcomeMsg: UILabel = {
		let msg = UILabel()
		msg.translatesAutoresizingMaskIntoConstraints = false
		msg.text = "Hi there, welcome back. Please sign in"
		msg.textAlignment = .center
		msg.numberOfLines = 1
		msg.font = UIFont.systemFont(ofSize: 14)
		return msg
	}()
	
	var errorMsg: UILabel = {
		let msg = UILabel()
		msg.translatesAutoresizingMaskIntoConstraints = false
		msg.textAlignment = .center
		msg.numberOfLines = 1
		msg.textColor = .red
		msg.font = UIFont.systemFont(ofSize: 12)
		return msg
	}()
	
	var emailStackView: UIStackView = {
		let stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.axis = NSLayoutConstraint.Axis.vertical
		stackView.distribution = UIStackView.Distribution.fill
		return stackView
	}()
	
	var passwordStackView: UIStackView = {
		let stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.axis = NSLayoutConstraint.Axis.vertical
		stackView.distribution = UIStackView.Distribution.equalCentering
		return stackView
	}()
	
	var bottomLabelStackView: UIStackView = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = "New to Carbon? "
		label.font = UIFont.systemFont(ofSize: 14)
		
		let btn = UIButton()
		btn.translatesAutoresizingMaskIntoConstraints = false
		btn.setTitleColor(UIColor(named: "primaryColor"), for: .normal)
		btn.setTitle("Set up new account", for: .normal)
		btn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
		btn.addTarget(self, action: #selector(didTapSignUp), for: .touchUpInside)
		
		let stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.axis = NSLayoutConstraint.Axis.horizontal
		stackView.alignment = UIStackView.Alignment.center
		stackView.addArrangedSubview(label)
		stackView.addArrangedSubview(btn)
		return stackView

	}()
	
	override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = .white
		
		constraintSetup()
		
		self.navigationItem.leftBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
		
		passwordModel.textField.addTarget(self, action: #selector(validateSignIn), for: .editingDidEnd)
    }
	
	private func constraintSetup() {
		view.addSubview(logo)
		logo.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
		logo.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.5).isActive = true
		logo.heightAnchor.constraint(equalToConstant: 40).isActive = true
		logo.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor).isActive = true
		
		view.addSubview(welcomeMsg)
		welcomeMsg.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		welcomeMsg.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 20).isActive = true
		
		view.addSubview(errorMsg)
		errorMsg.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		errorMsg.topAnchor.constraint(equalTo: welcomeMsg.bottomAnchor, constant: 20).isActive = true
		
		view.addSubview(emailStackView)
		emailStackView.topAnchor.constraint(equalTo: errorMsg.bottomAnchor, constant: 50).isActive = true
		emailStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
		emailStackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.95).isActive = true
		emailStackView.heightAnchor.constraint(equalToConstant: 75).isActive = true
		emailStackView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor).isActive = true
		
		emailModel.stackView.addArrangedSubview(emailModel.textField)
		emailStackView.addArrangedSubview(emailModel.label)
		emailStackView.addArrangedSubview(emailModel.stackView)
		
		view.addSubview(passwordStackView)
		passwordStackView.topAnchor.constraint(equalTo: emailStackView.bottomAnchor, constant: 20).isActive = true
		passwordStackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.95).isActive = true
		passwordStackView.heightAnchor.constraint(equalToConstant: 75).isActive = true
		passwordStackView.leadingAnchor.constraint(equalTo: emailStackView.leadingAnchor).isActive = true
		
		passwordModel.stackView.addArrangedSubview(passwordModel.textField)
		passwordModel.stackView.addArrangedSubview(passwordModel.button)
		passwordStackView.addArrangedSubview(passwordModel.label)
		passwordStackView.addArrangedSubview(passwordModel.stackView)
		
		view.addSubview(bottomLabelStackView)
		bottomLabelStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
		bottomLabelStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
	}
	
	@objc func didTapSignUp() {
		let signUpVC = SignUpViewController()
		self.navigationController?.pushViewController(signUpVC, animated: true)
	}
	
	@objc func validateSignIn() {
		
		guard let email = emailModel.textField.text,
			  let password = passwordModel.textField.text
		 else {
		 return
		}
//
		let isValidateEmail = self.validation.validateEmailId(emailID: email)
		if (isValidateEmail == false) {
			emailModel.textField.layer.borderColor = CGColor(red: 255, green: 0, blue: 0, alpha: 1)
			errorMsg.text = "Enter a valid email"
			print("Incorrect Email")
			return
		}
		else {
			emailModel.textField.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
		}
		let isValidatePass = self.validation.validatePassword(password: password)
		if (isValidatePass == false) {
			passwordModel.textField.layer.borderColor = CGColor(red: 255, green: 0, blue: 0, alpha: 1)
			errorMsg.text = "Incorrect Password"
			print("Incorrect Password")
			return
		} else {
			passwordModel.textField.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
		}
		
		print("logged In")
		
		let createVC = ProfileViewController()

		navigationController?.pushViewController(createVC, animated: true)
		
	}
	
}
