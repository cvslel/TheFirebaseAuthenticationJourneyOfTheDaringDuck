//
//  FeedVC.swift
//  TheFirebaseAuthenticationJourneyOfTheDaringDuck
//
//  Created by Cenker Soyak on 18.10.2023.
//

import UIKit
import FirebaseAuth

class FeedVC: UIViewController {

    let instagramCloneLabel = UILabel()
    let signOutButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
    }
    func createUI(){
        view.backgroundColor = .white
        
        instagramCloneLabel.text = "InstagramClone"
        instagramCloneLabel.font = .systemFont(ofSize: 30)
        view.addSubview(instagramCloneLabel)
        instagramCloneLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(25)
            make.centerX.equalToSuperview()
            make.width.equalTo(220)
        }
        signOutButton.setTitle("Sign Out", for: .normal)
        signOutButton.configuration = .filled()
        signOutButton.addTarget(self, action: #selector(signOutClicked), for: .touchUpInside)
        view.addSubview(signOutButton)
        signOutButton.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-30)
            make.centerX.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(110)
        }
        let alert = UIAlertController(title: "Succesfull", message: "You've signed in succesfully", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    @objc func signOutClicked(){
        do {
            try Auth.auth().signOut()
            self.dismiss(animated: true)
        }
        catch {
            print("Error")
        }
    }
}
