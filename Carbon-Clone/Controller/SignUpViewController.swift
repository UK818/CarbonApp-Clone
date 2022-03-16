//
//  SignUpViewController.swift
//  Carbon-Clone
//
//  Created by mac on 01/12/2021.
//

import UIKit

class SignUpViewController: UIViewController{
	
	let viewModel = ViewModelLayout()
	let nameModel = NameModel()
	let surnameModel = SurnameModel()
	let emailModel = EmailModel()
	let passwordModel = PassWordModel()
	let genderModel = GenderModel()
	let phoneNumberModel = PhoneNumberModel()
	
	let validation = Validation()
	
	var users = [User]()
	
	var user: User!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white
		
		self.navigationItem.title = "Create your Carbon account"
		self.navigationItem.standardAppearance?.backgroundColor = .black
		//		self.navigationItem.leftBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
		
		modelSetup()
		constraintSetup()
		
		//		notificationCenter()
		
	}
	
	private func notificationCenter() {
		NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
		NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
	}
	
	private func modelSetup() {
		nameModel.fNameStackView.addArrangedSubview(nameModel.fNameLabel)
		nameModel.fNameStackView.addArrangedSubview(nameModel.fNameTextField)
		nameModel.mNameStackView.addArrangedSubview(nameModel.mNameLabel)
		nameModel.mNameStackView.addArrangedSubview(nameModel.mNameTextField)
		nameModel.nameStackView.addArrangedSubview(nameModel.fNameStackView)
		nameModel.nameStackView.addArrangedSubview(nameModel.mNameStackView)
		surnameModel.surnameStackView.addArrangedSubview(surnameModel.surnameLabel)
		surnameModel.surnameStackView.addArrangedSubview(surnameModel.surnameTextField)
		emailModel.emailStackView.addArrangedSubview(emailModel.emailLabel)
		emailModel.emailStackView.addArrangedSubview(emailModel.emailTextField)
		passwordModel.passwordStackView.addArrangedSubview(passwordModel.passwordLabel)
		passwordModel.passwordStackView.addArrangedSubview(passwordModel.passwordTextField)
		genderModel.genderStackView.addArrangedSubview(genderModel.genderLabel)
		genderModel.genderStackView.addArrangedSubview(genderModel.genderTextField)
		phoneNumberModel.stackView.addArrangedSubview(phoneNumberModel.countryCodeLabel)
		phoneNumberModel.stackView.addArrangedSubview(phoneNumberModel.textField)
		phoneNumberModel.mainStackView.addArrangedSubview(phoneNumberModel.label)
		phoneNumberModel.mainStackView.addArrangedSubview(phoneNumberModel.stackView)
		
		viewModel.createBtn.addTarget(self, action: #selector(didTapCreateAccount), for: .touchUpInside)
		
	}
	
	private func constraintSetup() {
		
		view.addSubview(viewModel.welcomeMsg)
		viewModel.welcomeMsg.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		viewModel.welcomeMsg.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20).isActive = true
		
		view.addSubview(viewModel.errorMsg)
		viewModel.errorMsg.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		viewModel.errorMsg.topAnchor.constraint(equalTo: viewModel.welcomeMsg.topAnchor, constant: 40).isActive = true
		
		view.addSubview(viewModel.scrollView)
		viewModel.scrollView.addSubview(viewModel.scrollViewContainer)
		viewModel.scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		viewModel.scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		viewModel.scrollView.topAnchor.constraint(equalTo: viewModel.errorMsg.bottomAnchor, constant: 10).isActive = true
		viewModel.scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -160).isActive = true
		viewModel.scrollView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
		
		viewModel.scrollViewContainer.leadingAnchor.constraint(equalTo: viewModel.scrollView.leadingAnchor).isActive = true
		viewModel.scrollViewContainer.trailingAnchor.constraint(equalTo: viewModel.scrollView.trailingAnchor).isActive = true
		viewModel.scrollViewContainer.topAnchor.constraint(equalTo: viewModel.scrollView.topAnchor).isActive = true
		viewModel.scrollViewContainer.bottomAnchor.constraint(equalTo: viewModel.scrollView.bottomAnchor).isActive = true
		viewModel.scrollViewContainer.widthAnchor.constraint(equalTo: viewModel.scrollView.widthAnchor).isActive = true
		
		viewModel.scrollViewContainer.addArrangedSubview(nameModel.nameStackView)
		nameModel.nameStackView.topAnchor.constraint(equalTo: viewModel.scrollViewContainer.topAnchor, constant: 20).isActive = true
		nameModel.nameStackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.95).isActive = true
		nameModel.nameStackView.heightAnchor.constraint(equalToConstant: 75).isActive = true
		nameModel.nameStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
		
		viewModel.scrollViewContainer.addArrangedSubview(surnameModel.surnameStackView)
		surnameModel.surnameStackView.topAnchor.constraint(equalTo: nameModel.nameStackView.bottomAnchor, constant: 20).isActive = true
		surnameModel.surnameStackView.heightAnchor.constraint(equalTo: nameModel.nameStackView.heightAnchor).isActive = true
		surnameModel.surnameStackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.95).isActive = true
		surnameModel.surnameStackView.leadingAnchor.constraint(equalTo: nameModel.nameStackView.leadingAnchor).isActive = true
		
		viewModel.scrollViewContainer.addArrangedSubview(emailModel.emailStackView)
		emailModel.emailStackView.topAnchor.constraint(equalTo: surnameModel.surnameStackView.bottomAnchor, constant: 20).isActive = true
		emailModel.emailStackView.heightAnchor.constraint(equalTo: surnameModel.surnameStackView.heightAnchor).isActive = true
		emailModel.emailStackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.95).isActive = true
		emailModel.emailStackView.leadingAnchor.constraint(equalTo: surnameModel.surnameStackView.leadingAnchor).isActive = true
		
		viewModel.scrollViewContainer.addArrangedSubview(passwordModel.passwordStackView)
		passwordModel.passwordStackView.topAnchor.constraint(equalTo: emailModel.emailStackView.bottomAnchor, constant: 20).isActive = true
		passwordModel.passwordStackView.heightAnchor.constraint(equalTo: emailModel.emailStackView.heightAnchor).isActive = true
		passwordModel.passwordStackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.95).isActive = true
		passwordModel.passwordStackView.leadingAnchor.constraint(equalTo: emailModel.emailStackView.leadingAnchor).isActive = true
		
		viewModel.scrollViewContainer.addArrangedSubview(genderModel.genderStackView)
		genderModel.genderStackView.topAnchor.constraint(equalTo: passwordModel.passwordStackView.bottomAnchor, constant: 20).isActive = true
		genderModel.genderStackView.heightAnchor.constraint(equalTo: passwordModel.passwordStackView.heightAnchor).isActive = true
		genderModel.genderStackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.95).isActive = true
		genderModel.genderStackView.leadingAnchor.constraint(equalTo: passwordModel.passwordStackView.leadingAnchor).isActive = true
		
		viewModel.scrollViewContainer.addArrangedSubview(phoneNumberModel.mainStackView)
		phoneNumberModel.mainStackView.topAnchor.constraint(equalTo: genderModel.genderStackView.bottomAnchor, constant: 20).isActive = true
		phoneNumberModel.mainStackView.heightAnchor.constraint(equalTo: genderModel.genderStackView.heightAnchor).isActive = true
		phoneNumberModel.mainStackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.95).isActive = true
		phoneNumberModel.mainStackView.leadingAnchor.constraint(equalTo: genderModel.genderStackView.leadingAnchor).isActive = true
		
		view.addSubview(viewModel.txtLabel)
		viewModel.txtLabel.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor).isActive = true
		viewModel.txtLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -120).isActive = true
		
		view.addSubview(viewModel.createBtn)
		viewModel.createBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
		viewModel.createBtn.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.95).isActive = true
		viewModel.createBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
		viewModel.createBtn.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor).isActive = true
		
	}
	
	
	@objc func keyboardWillShow(notification: NSNotification) {
		if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
			if self.view.frame.origin.y == 0 {
				view.frame.origin.y -= keyboardSize.height
			}
		}
	}
	
	@objc func keyboardWillHide(notification: NSNotification) {
		if self.view.frame.origin.y != 0 {
			self.view.frame.origin.y = 0
		}
	}
	
	@objc func didTapCreateAccount(){
		
		var count = 0
		
		guard let firstName = nameModel.fNameTextField.text,
			  let middleName = nameModel.mNameTextField.text,
			  let surname = surnameModel.surnameTextField.text,
			  let email = emailModel.emailTextField.text,
			  let password = passwordModel.passwordTextField.text,
			  let gender = genderModel.genderTextField.text,
			  let phone = phoneNumberModel.textField.text
		else {
			return
		}
		
		let isValidateFirstName = self.validation.validateName(name: firstName)
		if (isValidateFirstName == false) {
			nameModel.fNameTextField.layer.borderColor = CGColor(red: 255, green: 0, blue: 0, alpha: 1)
			viewModel.errorMsg.text = "Enter firstName"
			print("Incorrect first name")
			return
		} else {
			nameModel.fNameTextField.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
		}
		
		let isValidateName = self.validation.validateName(name: surname)
		if (isValidateName == false) {
			surnameModel.surnameTextField.layer.borderColor = CGColor(red: 255, green: 0, blue: 0, alpha: 1)
			viewModel.errorMsg.text = "Enter surname"
			print("Incorrect surname")
			return
		} else {
			surnameModel.surnameTextField.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
		}
		let isValidateEmail = self.validation.validateEmailId(emailID: email)
		if (isValidateEmail == false) {
			emailModel.emailTextField.layer.borderColor = CGColor(red: 255, green: 0, blue: 0, alpha: 1)
			viewModel.errorMsg.text = "Enter a valid email"
			print("Incorrect Email")
			return
		}
		else {
			emailModel.emailTextField.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
		}
		let isValidatePass = self.validation.validatePassword(password: password)
		if (isValidatePass == false) {
			passwordModel.passwordTextField.layer.borderColor = CGColor(red: 255, green: 0, blue: 0, alpha: 1)
			viewModel.errorMsg.text = "Enter valid password: at least 8 alphabets and 2 numbers"
			print("Incorrect Password")
			return
		} else {
			passwordModel.passwordTextField.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
		}
		let isValidatePhone = self.validation.validaPhoneNumber(phoneNumber: phone)
		if (isValidatePhone == false) {
			phoneNumberModel.textField.layer.borderColor = CGColor(red: 255, green: 0, blue: 0, alpha: 1)
			viewModel.errorMsg.text = "Enter valid phone number eg. 8033112233"
			print("Incorrect Phone number")
			return
		} else {
			phoneNumberModel.textField.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
		}
		if (isValidateName == true || isValidateEmail == true || isValidatePass == true || isValidatePhone == true) {
			print("All fields are correct")
		}
		
		count += 1
		
		user = User(id: count, firstName: firstName, middleName: middleName, surname: surname, email: email, password: password, gender: gender, phoneNumber: phone)
		
		users.append(user)
		
//		UserDefaults.standard.set(users, forKey: "users")
		
				UserDefaults.standard.set(try? PropertyListEncoder().encode(users), forKey: "users")
		
		//		UserDefaults.standard.set(firstName, forKey: "firstName")
		//		UserDefaults.standard.set(middleName, forKey: "middleName")
		//		UserDefaults.standard.set(surname, forKey: "surname")
		//		UserDefaults.standard.set(email, forKey: "email")
		//		UserDefaults.standard.set(password, forKey: "password")
		//		UserDefaults.standard.set(gender, forKey: "gender")
		//		UserDefaults.standard.set(phone, forKey: "phoneNumber")
		
		let createVC = ProfileViewController()
		createVC.userArray = UserDefaults.standard.object(forKey: "users") as? [User] ?? []
		navigationController?.pushViewController(createVC, animated: true)
		
	}
	
}

