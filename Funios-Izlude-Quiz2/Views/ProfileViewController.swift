//
//  ProfileViewController.swift
//  Funios-Izlude-Quiz2
//
//  Created by FauziArda on 08/09/22.
//

import UIKit

class ProfileViewController: UIViewController {

    lazy var isEmailValid : Bool = false
    
    let profileImage : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "oscar")
        return imageView
    }()
        
        lazy var profileNameLabel : UILabel = {
            let label = UILabel()
            
            label.text = "Fauzi Arda Saputra"
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textAlignment = .center
            label.font = UIFont.systemFont(ofSize: 28 ,weight: .regular)
            label.textColor = .black
            label.backgroundColor = .white
            
            return label
        }()
        
        
        
        
        
        lazy var logOutButton : UIButton = {
            let button = UIButton()
            button.setTitle("Log Out", for: .normal)
            button.backgroundColor = .black
            button.translatesAutoresizingMaskIntoConstraints = false
            button.titleLabel?.textAlignment = .center
            button.titleLabel?.textColor = .white
            button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
            button.contentEdgeInsets = UIEdgeInsets(top: 15, left: 0, bottom: 15, right: 0)
            button.addTarget(self, action: #selector(handlelogOutButton), for: .touchUpInside)
            
            return  button
        }()
        
        lazy var loremLabel : UILabel = {
            let label = UILabel()
            
            label.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textAlignment = .left
            label.textColor = .black
            label.font = .systemFont(ofSize: 17)
            label.lineBreakMode = .byCharWrapping
            label.numberOfLines = 0
            
            
            return label
        }()
        
        
        

        override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
            print("Hello world")
            arrangeView()
        }
        
        func arrangeView(){
            view.backgroundColor = .systemBackground
            view.addSubview(profileNameLabel)
            view.addSubview(logOutButton)
            view.addSubview(loremLabel)
            view.addSubview(profileImage)
            
            NSLayoutConstraint.activate([
                profileNameLabel.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 10),
                profileNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                profileImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
                profileImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                profileImage.widthAnchor.constraint(equalToConstant: 100),
                profileImage.heightAnchor.constraint(equalToConstant: 100),
                
                logOutButton.topAnchor.constraint(equalTo: loremLabel.bottomAnchor, constant: 20),
                logOutButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
                logOutButton.widthAnchor.constraint(equalToConstant: view.bounds.width - 80),
                
                
                
                loremLabel.topAnchor.constraint(equalTo: profileNameLabel.bottomAnchor, constant: 20),
                loremLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32),
                loremLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32),
     
            ])
        }
        
        func isValidEmail(_ email: String) -> Bool {
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

            let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            return emailPred.evaluate(with: email)
        }
        
        
        
        
        @objc func handlelogOutButton(){
            print("alkdsfjalkfdj")
            self.navigationController?.popToRootViewController(animated: true)
            self.navigationController?.popViewController(animated: false)
                    self.navigationController?.popViewController(animated: false)
            
        }


}




#if DEBUG
import SwiftUI
struct ProfileViewController_Preview  : PreviewProvider {
    static var previews: some View{
        ViewControllerPreview {
            ProfileViewController()
        }
    }
}
#endif
