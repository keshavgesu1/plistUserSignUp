//
//  ViewController.swift
//  plistUserSignUp
//
//  Created by Keshav Raj Kashyap on 29/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var roelTextField: UITextField!
    @IBOutlet weak var employeeTextField: UITextField!
    @IBOutlet weak var contactNumberTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    var userData = [String:Any]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        readData()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnLogIn(_ sender: UIButton) {
        if nameTextField.text != userData["name"] as? String{
            print("please enter correct name")
        }else if roelTextField.text != userData["role"] as? String{
            print("please enter correct role")
        }else if emailTextField.text != userData["email"] as? String{
            print("please enter correct email")
            
        }else if contactNumberTextField.text != userData["contactNo."] as? String{
            print("please enter correct contact number")
            
        }else if employeeTextField.text != userData["empId"] as? String{
            print("please enter correct id")
        }else{
            let nextVc = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController")as! HomeViewController
            self.navigationController?.pushViewController(nextVc, animated: true)
            
        }
        
    }
    
    func readData(){
        if let path = Bundle.main.path(forResource: "UserData", ofType: "plist") {
            if let array = NSArray(contentsOfFile: path)?.firstObject as? [String:Any] {
                self.userData = array
//                let name = array["name"]
//                let email = array["email"]
//                let conatctNo = array["conatctNo."]
//                let empId = array["empId"]
//                let role = array["role"]
               
            }
        }
    }
    
}


