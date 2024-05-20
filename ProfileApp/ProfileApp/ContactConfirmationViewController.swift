//
//  ContactConfirmationViewController.swift
//  ProfileApp
//
//  Created by spark-03 on 2024/05/20.
//

import UIKit

class ContactConfirmationViewController: UIViewController {
    @IBOutlet weak var nameReceive: UITextField!
    @IBOutlet weak var mailReceive: UITextField!
    @IBOutlet weak var inquiryReceive: UITextField!
    
    var nameText: String?
    var mailText: String?
    var inquiryText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameReceive.text = nameText
        self.mailReceive.text = mailText
        self.inquiryReceive.text = inquiryText
    }
    
    @IBAction func buttonConfirmation(_ sender: Any) {
    }
}
