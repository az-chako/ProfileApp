//
//  ContactConfirmationViewController.swift
//  ProfileApp
//
//  Created by spark-03 on 2024/05/20.
//

import UIKit

class ContactConfirmationViewController: UIViewController {
    @IBOutlet weak var nameReceive: UILabel!
    @IBOutlet weak var mailReceive: UILabel!
    @IBOutlet weak var inquiryReceive: UILabel!
    
    @IBOutlet weak var confirmationButton: UIButton!
    var nameText: String?
    var mailText: String?
    var inquiryText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameReceive.text = nameText
        self.mailReceive.text = mailText
        self.inquiryReceive.text = inquiryText
        
        confirmationButton.layer.cornerRadius = 20  // 適切な角の半径を設定します
        confirmationButton.clipsToBounds = true
    }
    
    @IBAction func buttonConfirmation(_ sender: Any) {
    }
}
