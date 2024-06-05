//
//  WebViewController.swift
//  ProfileApp
//
//  Created by spark-03 on 2024/06/05.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://www.foriio.com/azusa-oobayashi") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}
