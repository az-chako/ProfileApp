//
//  ThankYouViewController.swift
//  ProfileApp
//
//  Created by spark-03 on 2024/05/20.
//

import UIKit

class ThankYouViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var thankYouLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 20  // 適切な角の半径を設定します
        button.clipsToBounds = true
        
        // ラベルの初期設定
        thankYouLabel.alpha = 0.0  // ラベルを最初は透明に
        
        // アニメーションの追加
        animateThankYouLabel()
    }
    
    
    @IBAction func buttonTop(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    func animateThankYouLabel() {
        UIView.animate(withDuration: 2.0, animations: {
            self.thankYouLabel.alpha = 1.0  // フェードイン
        })
    }
}
