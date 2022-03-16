//
//  PhoneNumberModel.swift
//  Carbon-Clone
//
//  Created by mac on 08/12/2021.
//

import UIKit

class PhoneNumberModel {
	
	var label: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = "Phone number"
		label.textAlignment = .left
		label.font = UIFont.boldSystemFont(ofSize: 14)
		label.heightAnchor.constraint(equalToConstant: 20).isActive = true
		return label
	}()
	
	var countryCodeLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.textAlignment = .left
		label.text = "+234"
		label.font = UIFont.boldSystemFont(ofSize: 16)
		label.heightAnchor.constraint(equalToConstant: 50).isActive = true
		return label
	}()
	
	var textField: UITextField = {
		
		let flag = UIImage(named: "nig")
		let iconImage = UIImage(systemName: "chevron.down")
		
		let txtField = UITextField()
		txtField.translatesAutoresizingMaskIntoConstraints = false
		txtField.heightAnchor.constraint(equalToConstant: 50).isActive = true
		txtField.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0)
		txtField.keyboardType = .phonePad
		txtField.placeholder = "8033774411"
//		txtField.loadDropdown(data: ["Nigeria", "Ghana", "UAE"])
		txtField.ImageIconRight(flag!)
		return txtField
	}()
	
	var stackView: UIStackView = {
		let stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.axis = NSLayoutConstraint.Axis.horizontal
		stackView.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0)
		stackView.spacing = 0
		stackView.layer.borderWidth = 0.5
		stackView.layer.cornerRadius = 5
		return stackView
	}()
	
	
	var mainStackView: UIStackView = {
		let stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.axis = NSLayoutConstraint.Axis.vertical
		stackView.distribution = UIStackView.Distribution.equalCentering
		return stackView
	}()
	
}
