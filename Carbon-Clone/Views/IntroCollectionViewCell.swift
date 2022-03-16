//
//  IntroCollectionViewCell.swift
//  Carbon-Clone
//
//  Created by mac on 29/11/2021.
//

import UIKit

class IntroCollectionViewCell: UICollectionViewCell {
	
	static let identifier = "IntroCollectionViewCell"
	
	var logo: UIImageView = {
		let logo = UIImageView()
		logo.translatesAutoresizingMaskIntoConstraints = false
		logo.contentMode = .scaleAspectFit
		logo.image = UIImage(named: "carbon")
		return logo
	}()
	
	var imageSlides: UIImageView = {
		let img = UIImageView()
		img.translatesAutoresizingMaskIntoConstraints = false
		img.contentMode = .scaleAspectFit
		img.clipsToBounds = true
		return img
	}()
	
	var heading: UILabel = {
		let heading = UILabel()
		heading.translatesAutoresizingMaskIntoConstraints = false
		heading.numberOfLines = 2
		heading.lineBreakMode = .byWordWrapping
		heading.textAlignment = .center
		heading.font = UIFont.boldSystemFont(ofSize: 24.0)
		return heading
	}()
	
	var body: UILabel = {
		let body = UILabel()
		body.numberOfLines = 3
		body.translatesAutoresizingMaskIntoConstraints = false
		body.lineBreakMode = .byWordWrapping
		body.textAlignment = .center
		return body
	}()
	
	var signUpBtn: UIButton = {
		let btn = UIButton()
		btn.translatesAutoresizingMaskIntoConstraints = false
		btn.setTitle("Set up a new account", for: .normal)
		btn.setTitleColor(.white, for: .normal)
		btn.backgroundColor = UIColor(named: "primaryColor")
		btn.layer.cornerRadius = 5
		return btn
	}()
	
	override init(frame: CGRect) {
		super.init(frame: .zero)
		backgroundColor = .white
		
		setup()
		
	}
	
	private func setup () {
		
		contentView.addSubview(logo)
		logo.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor, constant: 40).isActive = true
		logo.widthAnchor.constraint(equalTo: contentView.layoutMarginsGuide.widthAnchor, multiplier: 0.5).isActive = true
		logo.heightAnchor.constraint(equalToConstant: 40).isActive = true
		logo.centerXAnchor.constraint(equalTo: contentView.layoutMarginsGuide.centerXAnchor).isActive = true
		
		contentView.addSubview(imageSlides)
		imageSlides.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 50).isActive = true
		imageSlides.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.35).isActive = true
		imageSlides.centerXAnchor.constraint(equalTo: contentView.layoutMarginsGuide.centerXAnchor).isActive = true
		
		contentView.addSubview(heading)
		heading.topAnchor.constraint(equalTo: imageSlides.bottomAnchor).isActive = true
		heading.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
		
		contentView.addSubview(body)
		body.topAnchor.constraint(equalTo: heading.bottomAnchor, constant: 10).isActive = true
		body.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
		
		contentView.addSubview(signUpBtn)
		signUpBtn.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -80).isActive = true
		signUpBtn.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
		signUpBtn.widthAnchor.constraint(equalTo: contentView.layoutMarginsGuide.widthAnchor, multiplier: 0.9).isActive = true
		signUpBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
		
	}
	
	required init?(coder: NSCoder) {
		fatalError("Unable to initialise cell")
	}
	
}

