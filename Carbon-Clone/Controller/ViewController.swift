//
//  ViewController.swift
//  Carbon-Clone
//
//  Created by mac on 29/11/2021.
//

import UIKit

class ViewController: UIViewController {
	
	let slidesTuple = [
		(
			topBtn: ["Skip", "Skip ", "Sign in"],
			slideImages: ["slideOne", "slideTwo", "slideThree"],
			headings: ["Go beyond banking", """
			Stay on top of your finances.
			Anytime. Anywhere
			""", "Trusted by millions"],
			body: ["""
			Welcome to the future. Carbon is your
			passport to world-class financial
			services, built just for you.
			""", """
			Carbon makes financial services faster,
			cheaper and more conveinient. You can
			access the app 24/7, wherever you are.
			""", """
			With Carbon's market-leading service
			already used by millions of people just
			like you, you're in very good company.
			"""]
		)
	]
	
	var collectionView: UICollectionView = {
		let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
		let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
		collectionView.backgroundColor = .white
		collectionView.register(IntroCollectionViewCell.self, forCellWithReuseIdentifier: IntroCollectionViewCell.identifier)
		return collectionView
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white
		collectionViewSetup()
	
		self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Skip", style: .plain, target: self, action: #selector(didTapSignIn))
		
		self.navigationItem.rightBarButtonItem?.tintColor = UIColor(named: "primaryColor")
	
	}
	
	private func collectionViewSetup() {
		view.addSubview(collectionView)
		collectionView.frame = view.bounds
		collectionView.isPagingEnabled = true
		collectionView.delegate = self
		collectionView.dataSource = self
		collectionView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor).isActive = true
	}
	
	@objc func didTapSignUp() {
		let signUpVC = SignUpViewController()
		self.navigationController?.pushViewController(signUpVC, animated: true)
	}
	
	@objc func didTapSignIn() {
		let signInVC = SignInViewController()
		self.navigationController?.pushViewController(signInVC, animated: true)
	}

}


extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 3
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IntroCollectionViewCell.identifier, for: indexPath) as? IntroCollectionViewCell else {
			return UICollectionViewCell()
		}
		
		self.navigationItem.rightBarButtonItem?.title = slidesTuple[0].topBtn[indexPath.row]
		
		cell.imageSlides.image = UIImage(named: slidesTuple[0].slideImages[indexPath.row])
		cell.heading.text = slidesTuple[0].headings[indexPath.row]
		cell.body.text = slidesTuple[0].body[indexPath.row]
		cell.signUpBtn.addTarget(self, action: #selector(didTapSignUp), for: .touchUpInside)
		
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		CGSize(width: view.frame.width, height: view.frame.height)
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
	   return 0.0
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
	   return 0.0
	}
	
}

