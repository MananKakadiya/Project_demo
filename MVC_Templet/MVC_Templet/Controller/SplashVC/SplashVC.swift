//
//  SplashVC.swift
//  MVC_Templet
//
//  Created by Manan Kakadiya on 13/03/22.
//

import UIKit

class SplashVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let vc = LoginVC()
        self.navigationController?.pushViewController(vc, animated: true)
        
        
        
    }
}
