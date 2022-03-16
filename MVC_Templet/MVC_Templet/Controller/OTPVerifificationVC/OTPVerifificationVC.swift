//
//  OTPVerifificationVC.swift
//  MVC_Templet
//
//  Created by Manan Kakadiya on 17/03/22.
//

import UIKit

class OTPVerifificationVC: UIViewController {
    
    @IBOutlet weak var lblVerificationPhone: UILabel!
    @IBOutlet weak var lblPleaseEnterCode: UILabel!
    @IBOutlet weak var viewOTP: VPMOTPView!
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var lblDontReceiveCode: UILabel!
    @IBOutlet weak var btnResend: CustomButton!
    @IBOutlet weak var btnSubmit: CustomButton!
    
    var resetCodeTimer = Timer()
    var timeCount = 60
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.async {
            self.setUpInitialUI()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
   
    
}

//MARK: Other Methods

extension OTPVerifificationVC : VPMOTPViewDelegate {
    func setUpInitialUI(){
        
        lblVerificationPhone.textColor = ColorConstants.appGreenColor
        lblPleaseEnterCode.textColor = ColorConstants.appGrayColor
        setupOTPView()
        lblTime.text = "\(timeCount)s"
        lblTime.textColor = ColorConstants.appGreenColor
        lblDontReceiveCode.textColor = ColorConstants.appGreenColor
        btnSubmit.backgroundColor = ColorConstants.appGreenColor
        resetCodeTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    func setupOTPView() {
        viewOTP.otpFieldsCount = 4
        viewOTP.otpFieldSize = 50
        viewOTP.otpFieldSeparatorSpace = 15
        viewOTP.otpFieldDisplayType = .square
        viewOTP.cursorColor = UIColor.black
        viewOTP.otpFieldDefaultBorderColor = .black
        viewOTP.otpFieldEnteredBorderColor = ColorConstants.appGreenColor
        viewOTP.otpFieldDefaultBackgroundColor = UIColor.white
        viewOTP.otpFieldEnteredBackgroundColor = UIColor.white
        viewOTP.otpFieldEntrySecureType = false
        viewOTP.shouldAllowIntermediateEditing = false
        viewOTP.otpFieldBorderWidth = 1
        viewOTP.delegate = self
        viewOTP.initalizeUI()
    }
    
    
    func enteredOTP(otpString: String) {
        print(otpString)
    }
    
    func hasEnteredAllOTP(hasEntered: Bool) {
        print(hasEntered)
    }
    
    @objc func updateTimer() {
        if timeCount > 0 {
            timeCount -= 1
            lblTime.text = "\(timeCount)s"
        }
        if timeCount == 0 {
            timeCount = 59
        }
    }
}

//MARK: Button Action

extension OTPVerifificationVC {
    @IBAction func btnResend_Clicked(_ sender: Any) {
        
    }
    @IBAction func btnSubmit_Clicked(_ sender: Any) {
        let vc = SignUpVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
   
    
}
