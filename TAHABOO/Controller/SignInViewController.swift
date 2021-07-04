//
//  SignInViewController.swift
//  TAHABOO
//
//  Created by abbas m h on 28/06/21.
//

import UIKit

class SignInViewController: UIViewController {
    
    
    @IBOutlet weak var otp1Text: UITextField!
    @IBOutlet weak var otp2Text: UITextField!
    @IBOutlet weak var otp3Text: UITextField!
    @IBOutlet weak var otp4Text: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var resendButton: UIButton!
    var Otp = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
        deligateTxtField()
    }
    
    
    @IBAction func submitBtnPressed(_ sender: UIButton) {
        
        if Otp == "1234" {
            let homeVc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "home") as? HomeViewController
            self.navigationController?.pushViewController(homeVc!, animated: true)
        }
        
        
    }
    @IBAction func resendBtnPressed(_ sender: UIButton) {
    }
    
    
    func updateUi()  {
        
        submitButton.layer.cornerRadius = 12
        resendButton.layer.cornerRadius = 12
        otp1Text.layer.cornerRadius = 12
        otp2Text.layer.cornerRadius = 12
        otp3Text.layer.cornerRadius = 12
        otp4Text.layer.cornerRadius = 12
        navigationController?.navigationBar.isHidden = true
    }
    
    
    
    func deligateTxtField() {
        
        self.otp1Text.delegate = self
        self.otp2Text.delegate = self
        self.otp3Text.delegate = self
        self.otp4Text.delegate = self
        
        
        self.otp1Text.addTarget(self, action: #selector(self.changeCharacter), for: .editingChanged)
        self.otp2Text.addTarget(self, action: #selector(self.changeCharacter), for: .editingChanged)
        self.otp3Text.addTarget(self, action: #selector(self.changeCharacter), for: .editingChanged)
        self.otp4Text.addTarget(self, action: #selector(self.changeCharacter), for: .editingChanged)
        
    }
    
    @objc func changeCharacter(textfield : UITextField){
        
        if textfield.text?.utf8.count==1 {
            switch textfield {
            case otp1Text:
                otp2Text.becomeFirstResponder()
            case otp2Text:
                otp3Text.becomeFirstResponder()
            case otp3Text:
                otp4Text.becomeFirstResponder()
            case otp4Text:
                let OTP = ("\(otp1Text.text ?? "No Entry")\(otp2Text.text ?? "No Entry")\(otp3Text.text ?? "No Entry")\(otp4Text.text ?? "No Entry")")
                Otp = OTP
                if OTP == "1234" {
                    let homeVc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "home") as? HomeViewController
                    self.navigationController?.pushViewController(homeVc!, animated: true)
                }
                
            default:
                break
            }
        } else if textfield.text!.isEmpty {
            
            switch textfield {
            case otp4Text:
                otp3Text.becomeFirstResponder()
            case otp3Text:
                otp2Text.becomeFirstResponder()
            case otp2Text:
                otp1Text.becomeFirstResponder()
            default:
                break
            }
        }
        
    }
    
}
extension SignInViewController :  UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField.text?.utf16.count == 1 && !string.isEmpty {
            return false
        } else {
            return true
        }
    }
}
