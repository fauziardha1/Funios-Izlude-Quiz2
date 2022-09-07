//
//  TabBarMenuViewController.swift
//  Funios-Izlude-Quiz2
//
//  Created by FauziArda on 06/09/22.
//

import UIKit

class HomeViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .label
        setupVCs()
        selectedIndex = 0
        // Do any additional setup after loading the view.
        navigationItem.hidesBackButton = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    fileprivate func createNavController(for rootViewController: UIViewController,
                                                      title: String,
                                                      image: UIImage) -> UIViewController {
            let navController = UINavigationController(rootViewController: rootViewController)
            navController.tabBarItem.title = title
            navController.tabBarItem.image = image
            navController.navigationBar.prefersLargeTitles = true
            rootViewController.navigationItem.title = title
            return navController
        }
    
    func setupVCs() {
            viewControllers = [
                createNavController(for: SimpleGridViewController(), title: NSLocalizedString("Home", comment: ""), image: UIImage(systemName: "house")!),
                createNavController(for: UIViewController(), title: NSLocalizedString("Profile", comment: ""), image: UIImage(systemName: "person")!)
            ]
        }

}
