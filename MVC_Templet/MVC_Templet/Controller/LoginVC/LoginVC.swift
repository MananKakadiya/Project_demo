//
//  LoginVC.swift
//  MVC_Templet
//
//  Created by Manan Kakadiya on 14/03/22.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var lblEnterMobileNumber: UILabel!
    
    @IBOutlet weak var lblEnterMobileCode: UILabel!
    @IBOutlet weak var btnVerify: UIButton!
    @IBOutlet weak var txtMobileNumber: UITextField!
    
    let numberOne : Int = 0
    let numberTwo : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpInitialUI()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

}

//MARK: Other Methods

extension LoginVC{
    func setUpInitialUI(){
        
        lblEnterMobileCode.textColor = ColorConstants.appGrayColor
        btnVerify.clipsToBounds = true
        btnVerify.backgroundColor = ColorConstants.appGreenColor
        
    }
}

//MARK: Button Action

extension LoginVC {
    
    @IBAction func btnVerify_Clicked(_ sender: Any) {
        let vc = OTPVerifificationVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
