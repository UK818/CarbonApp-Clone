//
//  ProfileViewController.swift
//  Carbon-Clone
//
//  Created by mac on 01/12/2021.
//

import UIKit

class ProfileViewController: UIViewController {
	
	let firstNameModel = ProfileFNModel()
	let middleNameModel = ProfileMNModel()
	
	var userArray = [User]()
	
	var topView: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		view.backgroundColor = UIColor(named: "secondaryColor")
		return view
	}()
	
	var firstNameStackView: UIStackView = {
		let  stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.axis = NSLayoutConstraint.Axis.vertical
		stackView.distribution = UIStackView.Distribution.equalCentering
//		stackView.addArrangedSubview(label)
//		stackView.addArrangedSubview(innerStackView)
		return stackView
	}()
	
	var middleNameStackView: UIStackView = {
		let  stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.axis = NSLayoutConstraint.Axis.vertical
		stackView.distribution = UIStackView.Distribution.equalCentering
		return stackView
	}()
	
	var lastNameStackView: UIStackView = {
		
		let lastName = UILabel()
		lastName.translatesAutoresizingMaskIntoConstraints = false
		lastName.layer.cornerRadius = 5
		lastName.widthAnchor.constraint(lessThanOrEqualToConstant: 200).isActive = true
		lastName.heightAnchor.constraint(equalToConstant: 50).isActive = true
		lastName.text = UserDefaults.standard.string(forKey: "surname")
		
		let image = UIImageView()
		image.translatesAutoresizingMaskIntoConstraints = false
		image.contentMode = .scaleAspectFit
		image.image = UIImage(systemName: "lock")
		image.tintColor = .black
		
		let innerStackView = UIStackView()
		innerStackView.translatesAutoresizingMaskIntoConstraints = false
		innerStackView.axis = NSLayoutConstraint.Axis.horizontal
		innerStackView.distribution = UIStackView.Distribution.equalCentering
		innerStackView.alignment = UIStackView.Alignment.center
		innerStackView.layer.cornerRadius = 5
		innerStackView.backgroundColor = UIColor(white: 0.9, alpha: 1)
		innerStackView.addArrangedSubview(lastName)
		innerStackView.addArrangedSubview(image)
		innerStackView.isLayoutMarginsRelativeArrangement = true
		innerStackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
		
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = "Last Name"
		label.textAlignment = .left
		label.font = UIFont.boldSystemFont(ofSize: 14)
		label.heightAnchor.constraint(equalToConstant: 20).isActive = true
		
		let  stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.axis = NSLayoutConstraint.Axis.vertical
		stackView.distribution = UIStackView.Distribution.equalCentering
		stackView.addArrangedSubview(label)
		stackView.addArrangedSubview(innerStackView)
		return stackView
	}()
	
	var emailStackView: UIStackView = {
		
		let email = UILabel()
		email.translatesAutoresizingMaskIntoConstraints = false
		email.layer.cornerRadius = 5
		email.widthAnchor.constraint(lessThanOrEqualToConstant: 200).isActive = true
		email.heightAnchor.constraint(equalToConstant: 50).isActive = true
		email.text = UserDefaults.standard.string(forKey: "email")
		
		let innerStackView = UIStackView()
		innerStackView.translatesAutoresizingMaskIntoConstraints = false
		innerStackView.axis = NSLayoutConstraint.Axis.horizontal
		innerStackView.distribution = UIStackView.Distribution.equalCentering
		innerStackView.alignment = UIStackView.Alignment.center
		innerStackView.layer.cornerRadius = 5
		innerStackView.backgroundColor = UIColor(white: 0.9, alpha: 1)
		innerStackView.addArrangedSubview(email)
		innerStackView.isLayoutMarginsRelativeArrangement = true
		innerStackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
		
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = "Email address"
		label.textAlignment = .left
		label.font = UIFont.boldSystemFont(ofSize: 14)
		label.heightAnchor.constraint(equalToConstant: 20).isActive = true
		
		let  stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.axis = NSLayoutConstraint.Axis.vertical
		stackView.distribution = UIStackView.Distribution.equalCentering
		stackView.addArrangedSubview(label)
		stackView.addArrangedSubview(innerStackView)
		return stackView
	}()
	
	var genderStackView: UIStackView = {
		
		let gender = UILabel()
		gender.translatesAutoresizingMaskIntoConstraints = false
		gender.widthAnchor.constraint(lessThanOrEqualToConstant: 200).isActive = true
		gender.heightAnchor.constraint(equalToConstant: 50).isActive = true
		gender.text = UserDefaults.standard.string(forKey: "gender")
		
		let image = UIImageView()
		image.translatesAutoresizingMaskIntoConstraints = false
		image.contentMode = .scaleAspectFit
		image.image = UIImage(systemName: "lock")
		image.tintColor = .black
		
		let innerStackView = UIStackView()
		innerStackView.translatesAutoresizingMaskIntoConstraints = false
		innerStackView.axis = NSLayoutConstraint.Axis.horizontal
		innerStackView.distribution = UIStackView.Distribution.equalCentering
		innerStackView.alignment = UIStackView.Alignment.center
		innerStackView.layer.cornerRadius = 5
		innerStackView.backgroundColor = UIColor(white: 0.9, alpha: 1)
		innerStackView.addArrangedSubview(gender)
		innerStackView.addArrangedSubview(image)
		innerStackView.isLayoutMarginsRelativeArrangement = true
		innerStackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
		
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = "Gender"
		label.textAlignment = .left
		label.font = UIFont.boldSystemFont(ofSize: 14)
		label.heightAnchor.constraint(equalToConstant: 20).isActive = true
		
		let  stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.axis = NSLayoutConstraint.Axis.vertical
		stackView.distribution = UIStackView.Distribution.equalCentering
		stackView.addArrangedSubview(label)
		stackView.addArrangedSubview(innerStackView)
		return stackView
	}()
	
	var phoneNumberStackView: UIStackView = {
		
		let phoneNumber = UILabel()
		phoneNumber.translatesAutoresizingMaskIntoConstraints = false
		phoneNumber.layer.cornerRadius = 5
		phoneNumber.widthAnchor.constraint(lessThanOrEqualToConstant: 200).isActive = true
		phoneNumber.heightAnchor.constraint(equalToConstant: 50).isActive = true
		phoneNumber.text = UserDefaults.standard.string(forKey: "phoneNumber")
		
		let innerStackView = UIStackView()
		innerStackView.translatesAutoresizingMaskIntoConstraints = false
		innerStackView.axis = NSLayoutConstraint.Axis.horizontal
		innerStackView.distribution = UIStackView.Distribution.equalCentering
		innerStackView.alignment = UIStackView.Alignment.center
		innerStackView.layer.cornerRadius = 5
		innerStackView.backgroundColor = UIColor(white: 0.9, alpha: 1)
		innerStackView.addArrangedSubview(phoneNumber)
		innerStackView.isLayoutMarginsRelativeArrangement = true
		innerStackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
		
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = "Phone number"
		label.textAlignment = .left
		label.font = UIFont.boldSystemFont(ofSize: 14)
		label.heightAnchor.constraint(equalToConstant: 20).isActive = true
		
		let  stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.axis = NSLayoutConstraint.Axis.vertical
		stackView.distribution = UIStackView.Distribution.equalCentering
		stackView.addArrangedSubview(label)
		stackView.addArrangedSubview(innerStackView)
		return stackView
	}()
	
	let scrollView: UIScrollView = {
		let scrollView = UIScrollView()
		scrollView.translatesAutoresizingMaskIntoConstraints = false
		scrollView.isScrollEnabled = true
		return scrollView
	}()
	
	let scrollViewContainer: UIStackView = {
		let view = UIStackView()
		view.axis = .vertical
		view.spacing = 10
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	var nextBtn: UIButton = {
		let btn = UIButton()
		btn.translatesAutoresizingMaskIntoConstraints = false
		btn.setTitle("Next", for: .normal)
		btn.setTitleColor(.white, for: .normal)
		btn.backgroundColor = UIColor(named: "primaryColor")
		btn.layer.cornerRadius = 5
		return btn
	}()
	
	override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = .white
		constraintSetup()
		navItems()
		userDefaultData()
		print(userArray)
	}
	
	func userDefaultData() {

		if let data = UserDefaults.standard.value(forKey:"users") as? Data {
			let user = try? PropertyListDecoder().decode(Array<User>.self, from: data)
			
			firstNameModel.displayLabel.text = user?[0].firstName
			middleNameModel.displayLabel.text = user?[0].middleName
		}
	}
	private func navItems() {
		self.navigationItem.title = "Profile details"
		
		self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: nil)
		self.navigationItem.rightBarButtonItem?.tintColor = UIColor(named: "primaryColor")
		
		self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
		self.navigationItem.leftBarButtonItem?.tintColor = UIColor(named: "primaryColor")
	}
		
	private func constraintSetup() {
		
		view.addSubview(topView)
		topView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 10).isActive = true
		topView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.95).isActive = true
		topView.heightAnchor.constraint(equalTo: view.heightAnchor,multiplier: 0.1).isActive = true
		topView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor).isActive = true
		
		view.addSubview(scrollView)
		scrollView.addSubview(scrollViewContainer)
		scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		scrollView.topAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
		scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -140).isActive = true
		scrollView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
		
		scrollViewContainer.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
		scrollViewContainer.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
		scrollViewContainer.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
		scrollViewContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
		scrollViewContainer.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
		
		firstNameModel.stackView.addArrangedSubview(firstNameModel.displayLabel)
		firstNameModel.stackView.addArrangedSubview(firstNameModel.lockImage)
		firstNameStackView.addArrangedSubview(firstNameModel.label)
		firstNameStackView.addArrangedSubview(firstNameModel.stackView)
		
		scrollViewContainer.addArrangedSubview(firstNameStackView)
		firstNameStackView.topAnchor.constraint(equalTo: scrollViewContainer.topAnchor, constant: 20).isActive = true
		firstNameStackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.95).isActive = true
		firstNameStackView.heightAnchor.constraint(equalToConstant: 75).isActive = true
		firstNameStackView.leadingAnchor.constraint(equalTo: topView.leadingAnchor).isActive = true
		
		middleNameModel.stackView.addArrangedSubview(middleNameModel.displayLabel)
		middleNameStackView.addArrangedSubview(middleNameModel.label)
		middleNameStackView.addArrangedSubview(middleNameModel.stackView)
		
		scrollViewContainer.addArrangedSubview(middleNameStackView)
		middleNameStackView.topAnchor.constraint(equalTo: firstNameStackView.bottomAnchor, constant: 20).isActive = true
		middleNameStackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.95).isActive = true
		middleNameStackView.heightAnchor.constraint(equalTo: firstNameStackView.heightAnchor).isActive = true
		middleNameStackView.leadingAnchor.constraint(equalTo: topView.leadingAnchor).isActive = true
		
		scrollViewContainer.addArrangedSubview(lastNameStackView)
		lastNameStackView.topAnchor.constraint(equalTo: middleNameStackView.bottomAnchor, constant: 20).isActive = true
		lastNameStackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.95).isActive = true
		lastNameStackView.heightAnchor.constraint(equalTo: firstNameStackView.heightAnchor).isActive = true
		lastNameStackView.leadingAnchor.constraint(equalTo: topView.leadingAnchor).isActive = true
		
		scrollViewContainer.addArrangedSubview(emailStackView)
		emailStackView.topAnchor.constraint(equalTo: lastNameStackView.bottomAnchor, constant: 20).isActive = true
		emailStackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.95).isActive = true
		emailStackView.heightAnchor.constraint(equalTo: firstNameStackView.heightAnchor).isActive = true
		emailStackView.leadingAnchor.constraint(equalTo: topView.leadingAnchor).isActive = true
		
		scrollViewContainer.addArrangedSubview(genderStackView)
		genderStackView.topAnchor.constraint(equalTo: emailStackView.bottomAnchor, constant: 20).isActive = true
		genderStackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.95).isActive = true
		genderStackView.heightAnchor.constraint(equalTo: firstNameStackView.heightAnchor).isActive = true
		genderStackView.leadingAnchor.constraint(equalTo: topView.leadingAnchor).isActive = true
		
		scrollViewContainer.addArrangedSubview(phoneNumberStackView)
		phoneNumberStackView.topAnchor.constraint(equalTo: genderStackView.bottomAnchor, constant: 20).isActive = true
		phoneNumberStackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.95).isActive = true
		phoneNumberStackView.heightAnchor.constraint(equalTo: firstNameStackView.heightAnchor).isActive = true
		phoneNumberStackView.leadingAnchor.constraint(equalTo: topView.leadingAnchor).isActive = true
		
		view.addSubview(nextBtn)
		nextBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
		nextBtn.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.95).isActive = true
		nextBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
		nextBtn.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor).isActive = true
	}
	
}
