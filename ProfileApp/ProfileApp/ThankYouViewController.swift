//
//  ThankYouViewController.swift
//  ProfileApp
//
//  Created by spark-03 on 2024/05/20.
//

import UIKit

class ThankYouViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func buttonTop(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
