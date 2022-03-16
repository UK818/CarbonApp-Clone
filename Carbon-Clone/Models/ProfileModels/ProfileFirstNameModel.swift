//
//  ProfileFirstNameModel.swift
//  Carbon-Clone
//
//  Created by mac on 09/12/2021.
//

import UIKit


class ProfileFNModel {
	
	let displayLabel: UILabel = {
		let firstName = UILabel()
		firstName.translatesAutoresizingMaskIntoConstraints = false
		firstName.layer.cornerRadius = 5
		firstName.widthAnchor.constraint(lessThanOrEqualToConstant: 200).isActive = true
		firstName.heightAnchor.constraint(equalToConstant: 50).isActive = true
//		firstName.text = UserDefaults.standard.string(forKey: "firstName")
		return firstName
	}()
	
	let lockImage: UIImageView = {
		let image = UIImageView()
		image.translatesAutoresizingMaskIntoConstraints = false
		image.contentMode = .scaleAspectFit
		image.image = UIImage(systemName: "lock")
		image.tintColor = .black
		return image
	}()
	
	let stackView: UIStackView = {
		let stackview = UIStackView()
		stackview.translatesAutoresizingMaskIntoConstraints = false
		stackview.axis = NSLayoutConstraint.Axis.horizontal
		stackview.distribution = UIStackView.Distribution.equalCentering
		stackview.alignment = UIStackView.Alignment.center
		stackview.layer.cornerRadius = 5
		stackview.backgroundColor = UIColor(white: 0.9, alpha: 1)
//		stackview.addArrangedSubview(firstName)
//		stackview.addArrangedSubview(image)
		stackview.isLayoutMarginsRelativeArrangement = true
		stackview.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
		return stackview
	}()
	
	let label: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = "First name"
		label.textAlignment = .left
		label.font = UIFont.boldSystemFont(ofSize: 14)
		label.heightAnchor.constraint(equalToConstant: 20).isActive = true
		return label
	}()
	
}
