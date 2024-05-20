//
//  ContactFormViewController.swift
//  ProfileApp
//
//  Created by spark-03 on 2024/05/20.
//

import UIKit

class ContactFormViewController: UIViewController {
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var mail: UITextField!
    @IBOutlet weak var inquiry: UITextField!
    @IBOutlet weak var buttn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ContactConfirmationSegue" {
            if let contactConfirmationViewController = segue.destination as? ContactConfirmationViewController {
                contactConfirmationViewController.nameText = self.name.text
                contactConfirmationViewController.mailText = self.mail.text
                contactConfirmationViewController.inquiryText = self.inquiry.text
                
            }
        }
    }
}
