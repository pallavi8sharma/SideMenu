//
//  HomeController.swift
//  SideMenuiOS
//
//  Created by pallavi sharma on 15/04/2020.
//  Copyright © 2020 pallavi sharma. All rights reserved.
//

import UIKit

class HomeController: UIViewController{
    
    // MARK: - Properties
    
    var delegate: HomeControllerDelegate?
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("aaaa")
        view.backgroundColor = .white
        configureNavigationBar()
    }
    
    // MARK: - Handlers
    
    @objc func handleMenuToggle(){

        delegate?.handleMenuToggle(forMenuOption: nil)
    }
    
    func configureNavigationBar(){
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image:
            #imageLiteral(resourceName: "menu").withRenderingMode(.alwaysOriginal) , style: .plain, target: self, action: #selector(handleMenuToggle))
    }
}
